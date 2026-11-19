# PROFINET IO (PN-IO)
A **fieldbus protocol** for **decentralised Input/Output**. (Sources: Wireshark Wiki)
## fieldbus protocol
A digital, serial, **multi-drop**, two-way data bus or communication path or link between low-level industrial field equipment such as sensors, **transducers**, **actuators**, local controllers, and even control room devices.

* **Multi-Drop Bus (MDB)** -- what is different from general buses?
  A computer bus able to connect three or more devices.
A process of arbitration determines which device sends information at any point.
The other devices listen for the data they are intended to receive.

  Multidrop buses have the advantage of simplicity and extensibility, but their differing electrical characteristics make them relatively unsuitable for high frequency or high bandwidth applications. (Sources: Wikipedia - Multidrop bus)

* **Transducer Capabilities:** provide the ability for computing devices to interact directly with physical entities of interest.
The two types: **sensing** and **actuating** (Sources: NIST GLOSSARY)

### Why need fieldbus?
Use of fieldbus technologies eliminates the need for point-to-point wiring between the controller and each device.
A protocol is used to define messages over the fieldbus network, and each message identifies a particular sensor on the network. (Sources: NIST GLOSSARY)

## Decentralised I/O (vs Centralised Control Systems)
**Traditional centralised systems** route all I/O signals back to a main control cabinet housing PLCs or distributed control systems.
- **Advantage:** Programming stays simple because all logic resides in one controller.
- **Challenges:**
  - Extensive wiring runs increase installation costs: field devices transmit signals over long cable runs to the central controller).
  - Create potential failure points: signal quality degrades over long distances. Plus, the central controller becomes a single point of failure that can shut down entire production areas.
- **Usage:**
  - Smaller facilities with I/O points clustered near the control room
  - Preferred when tight integration between different processes is required 

### Decentralised I/O systems
Smart I/O modules with built-in processing power connect directly to field devices and make local decisions.
These modules communicate with higher-level controllers through industrial networks like **Ethernet/IP** or **Profinet**.
- **Advantages:**
  - Wiring costs drop dramatically
  - Response times improve
  - System reliability increases because failures in one area don't affect others
- **Tradeoffs:**
  - Higher upfront costs for intelligent I/O modules compared to simple remote I/O
  - Network management becomes more complex, requiring expertise in industrial communication protocols (Sources: Global Electronic Services)
