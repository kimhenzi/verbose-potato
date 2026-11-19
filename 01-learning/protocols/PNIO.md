# PROFINET IO (PN-IO)
A **fieldbus protocol** for **decentralised Input/Output**. (from Wireshark Wiki)
## fieldbus protocol
  A digital, serial, **multi-drop**, two-way data bus or communication path or link between low-level industrial field equipment
    such as sensors, **transducers**, **actuators**, local controllers, and even control room devices.
* Multi-Drop Bus (MDB) -- what is different from general buses?
A computer bus able to connect three or more devices.
A process of **arbitration** determines which device sends information at any point.
The other devices listen for the data they are intended to receive.
(Sources: Wikipedia - Multidrop bus)

  Multidrop buses have the advantage of simplicity and extensibility, but their differing electrical characteristics make them relatively unsuitable for high frequency or high bandwidth applications.
* transducer
* actuator

### Why need fieldbus?
Use of fieldbus technologies eliminates the need for point-to-point writing between the controller and each device.
A protocol is used to define messages over the fieldbus network, and each message identifies a particular sensor on the network.
(Sources: NIST SP 800-82r3)

## Decentralised I/O (vs Centralised Control Systems)
- **Traditional centralised systems** route all I/O signals back to a main control cabinet housing PLCs or distributed control systems.
  - Advantage: Programming stays simple because all logic resides in one controller.
  - Challenges:
    - Extensive wiring runs increase installation costs: field devices transmit signals over long cable runs to the central controller).
    - Create potential failure points: signal quality degrades over long distances. Plus, the central controller becomes a single point of failure that can shut down entire production areas.
  - Usage:
    - Smaller facilities with I/O points clustered near the control room
    - Preferred when tight integration between different processes is required 

(Sources: Global Electronic Services)
