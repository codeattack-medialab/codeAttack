extends Node

var udp
var pid
var dest_ip
var dest_port

func _ready():
	udp = PacketPeerUDP.new()
	var port
	for n in range(2000, 65535):
		var err = udp.listen(n, "127.0.0.1")
		if err == OK:
			port = n
			break
		elif n == 65535:
			get_tree().quit()

	pid = OS.execute("./subprocess.py", [str(port)], false)

func _process(delta):
	while udp.get_available_packet_count() > 0:
		var packet = udp.get_packet().get_string_from_ascii()

		if packet.begins_with("ready"):
			dest_ip = udp.get_packet_ip()
			dest_port = udp.get_packet_port()
			udp.set_dest_address(dest_ip, dest_port)
			udp.put_packet("continue".to_ascii())

		elif packet.begins_with("move_to "):
			var to = packet.split(" ")[1].split(",")
			$Cube.move_to(int(to[0]), int(to[1]))

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		print("Killing subprocess with PID ", pid)
		OS.kill(pid)
		get_tree().quit()

func _on_cube_move_completed():
	udp.put_packet("continue".to_ascii())
