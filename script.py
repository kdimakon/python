import socket

srv = socket.socket()
srv.bind(('localhost', 8000))
srv.listen(1)
conn, addr = srv.accept()

print('connected from', addr)

while True:
    data = conn.recv(1024)
    if not data:
        break
    conn.send(data.upper())

conn.close()
