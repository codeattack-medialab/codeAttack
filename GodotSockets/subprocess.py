#!/usr/bin/python3

import sys
import socket
import random

if len(sys.argv) < 2:
	sys.exit(1)

try:
	dest_port = int(sys.argv[1])
except ValueError:
	sys.exit(1)

dest_addr = ('127.0.0.1', dest_port)
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Choose an unused port
port = 0
for n in range(2000, 65535):
	if n == dest_port:
		continue
	addr = ('127.0.0.1', n)
	try:
		s.bind(addr)
	except:
		if n == 65535:
			sys.exit(1)
	else:
		break

s.sendto(b'ready', dest_addr)

while True:
	rdata, recv_addr = s.recvfrom(1024)
	packet = rdata.decode('ascii')

	if packet.startswith('continue'):
		x = random.randint(0, 4)
		y = random.randint(0, 4)
		s.sendto('move_to {},{}'.format(x, y).encode('ascii'), dest_addr)

	elif packet.startswith('end'):
		break

