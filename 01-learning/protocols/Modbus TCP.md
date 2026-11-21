# Modbus/TCP (Modbus TCP/IP)
-  Modbus messaging structure embedded inside a TCP/IP packet,
-  Allows industrial devices like PLCs, I/O modules and Modbus gateways to communicate over Ethernet-based or intranet or internet networks
- De facto automation standard

  -  **PLC:** a solid-state control system that has a user-programmable memory for storing instructions for the purpose of implementing specific functions such as I/O control, logic, timing, counting, three mode (PID) control, communication, arithmetic, and data and file processing (Sources: NIST GLOSSARY) 

## Modbus TCP/IP Communication Model
Client (master) sends request to server (slave) devices to read or write data, and the server performs the action and responds back to the client.

### 1. Modbus TCP/IP Addressing
Physical node addresses (server IDs) used in **serial networks** are replaced by a combination of an IP address and an optional Unit ID.
- A client routes commands to specific devices by first targeting a unique IP address on the Ethernet network and then specifies a particular server through a Unit ID, once the data arrives.
- Unit ID can serve two distinct purposes: ensuring a protocol compliance and routing to serial devices.
  
#### Direct Connections
When directly connecting Ethernet-native devices, the IP address already provides a unique, direct path between them, making the Unit ID redundant because there is only one device at each location.
In practice, the Unit ID is typically set to 0 or 255 to ensure compliance with the Modbus TCP/IP specification.
- Using these reserved values ensures the message is processed by the main controller's application layer rather than being discarded or misinterpreted as an invalid sub-network address.
- Most modern Ethernet-native servers are programmed to ignore the Unit ID entirely but setting it to 255 remains the industry-standard safe value for direct communication.
  
#### Modbus Gateways and Unit ID
Unit ID acts as a translator between a multi-device serial network and Modbus TCP/IP.
- Gateway is assigned a single IP address that represents the entire serial chain.
- To target a specific device, the client uses Unit IDs 1 to 247.
  - This allows each serial server to be individually represented and _polled_ through the same Ethernet connection, using the Unit ID to uniquely identify the destination once the packet reaches the gateway.
  
### 2. Modbus TCP/IP Polling
**Polling**: the process of repeatedly sampling the status of external devices by a client program (Sources: TechTarget)

This protocol allows for simultaneous communication by opening multiple TCP sockets at once, so a client can poll several different IP addresses at once rather than waiting for each device in a row 
But every server has a physical hardware limit on how many sockets it can maintain.
(If a client attempts to open more sockets than the hardware supports, server will reject the connection.)

Because the protocol itself operates on a request-response basis, every command sent by the client must have a corresponding response from the server to confirm the transaction regardless of how many sockets are open.////////

#### Polling through a Modbus Gateway
While a client can poll multiple gateways simultaneously, the devices behind a single gateway must still be polled sequentially.
Because the gateway must translate the Ethernet message back into a serial broadcast, the RS-485 daisy chain still uses half-duplex (one-at-a-time) communication.
If a client sends multiple requests to different Unit IDs on the same gateway too quickly, the gateway will buffer those requests and send them out one by one.

(Sources: Real Time Automation)
