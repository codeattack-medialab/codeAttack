extends Node

var server = WebSocketServer.new()
var client_id
var client
var pid

func _ready():
	var port = _listen()
	if port == -1:
		get_tree().quit()
	server.connect("client_connected", self, "_client_connected")
	server.connect("client_disconnected", self, "_client_disconnected")
	server.connect("data_received", self, "_data_received")

	# Llamada a script de python que manda posiciones aleatorias por Websockets
	match OS.get_name():
		"Windows":
			pid = OS.execute("python", ["game-subprocess.py", str(port)], false)
		_:
			pid = OS.execute("./game-subprocess.py", [str(port)], false)

func _listen():
	for port in range(2000, 65535):
		if server.listen(port) == OK:
			print("Server listening on port ", port)
			return port
	return -1

func _exit_tree():
	server.stop()
	if pid:
		print("Killing subprocess with PID ", pid)
		#warning-ignore:return_value_discarded
		OS.kill(pid)

func _client_connected(id, protocol):
	if client:
		server.disconnect_peer(id)

	print("Client connected, address: %s port: %s" % [server.get_peer_address(id), server.get_peer_port(id)])
	client_id = id
	client = server.get_peer(id)
	client.put_packet("continue".to_ascii())

func _client_disconnected(id, was_clean_close):
	if client and client_id == id:
		client = null
		print("Client disconnected")

#warning-ignore:unused_argument
func _data_received(id):
	var packet
	while client.get_available_packet_count() > 0:
		packet = client.get_packet().get_string_from_ascii()

		if packet.begins_with("move_to "):
			var to = packet.split(" ")[1].split(",")
			$Cube.move_to(int(to[0]), int(to[1]))

func _process(delta):
	if server.is_listening():
		server.poll()

func _on_cube_move_completed():
	if client:
		client.put_packet("continue".to_ascii())
