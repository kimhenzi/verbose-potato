# STP (Spanning Tree Protocol)
Spanning tree is the family of IEEE 802.1 protocols that stops Ethernet frames from circling forever when switches are wired with redundant links.
Every bridge exchanges small messages called **BPDU**s, the network elects one root bridge, and each bridge blocks just one enough ports that exactly one loop free path remains between any two points.

(Sources: Safeguard)


## Root

### Root Device (Bridge)
The bridge on the network that serves as a central point in the spanning tree

### Root Port
The port on each device that provides the most efficient path to the device

(Sources: Cisco Systems)