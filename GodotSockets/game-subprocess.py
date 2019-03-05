#!/usr/bin/python3

import sys
import random
import asyncio
import websockets

if len(sys.argv) < 2:
	sys.exit(1)

try:
	server_port = int(sys.argv[1])
except ValueError:
	sys.exit(1)

async def main():
	async with websockets.connect('ws://localhost:{}'.format(server_port)) as websocket:

		while True:
			packet = await websocket.recv()
			if packet.startswith(b'continue'):
				x = random.randint(0, 4)
				y = random.randint(0, 4)
				await websocket.send('move_to {},{}'.format(x, y))

			elif packet.startswith(b'end'):
				break

asyncio.get_event_loop().run_until_complete(main())
