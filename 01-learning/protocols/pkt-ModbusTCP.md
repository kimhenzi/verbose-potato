# Read Input Registers (FC04)
This command is requesting the content of analog input register from the slave device.

## Input registers: for live data, look but don't touch
Input registers are read-only.
They hold real-time measurement values reported by the sensor. (Sources: Seven Sensor)

# Write Multiple Registers (FC16)
This command is writing the contents of two analog output holding registers to the slave device.
Presets a block of **holding registers** to specific values (Sources: Intro to Modbus)

## Holding registers: settings, calibration & control


# Port 502
Specifically reserved for Modbus applications.
A Modbus server will listen for communication on port 502.

When a Modbus client wants to send a message to a remote Modbus server, it opens a connection with remote port 502.
As soon as a connection is established, the same connection can be used to transfer user data in either direction between a client and server.
A client and server may also establish several TCP/IP connections simultaneously.

When a connection is established, all the transmissions that are part of that connection are associated with a **Connection ID (CID)**.
If both directions involved, two CIDs are assigned.


_[frame 23]	0.167339	192.168.127.20	192.168.127.21	Modbus/TCP	66	   Query: Trans: 37888; Unit:   0, Func:   4: Read Input Registers_

_[frame 25]	0.176788	192.168.127.21	192.168.127.20	Modbus/TCP	77	Response: Trans: 37888; Unit:   0, Func:   4: Read Input Registers_


_[frame 35861]	256.166266	192.168.127.20	192.168.127.21	Modbus/TCP	66	   Query: Trans: 37888; Unit:   0, Func:   4: Read Input Registers_

_[frame 35863]	256.174689	192.168.127.21	192.168.127.20	Modbus/TCP	77	Response: Trans: 37888; Unit:   0, Func:   4: Read Input Registers_

(Sources: Simply Modbus)
