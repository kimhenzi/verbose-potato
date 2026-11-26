# User Datagram Protocol
One of the core communication protocols of the Internet protocol suite used to send messages (transported as datagrams in packets) to other hosts on an Internet Protocol (IP) network.

Within an IP network, UDP does not require prior communication to set up communication channels or data paths.

UDP is a connectionless protocol, meaning that messages are sent without performing a handshake or otherwise establishing a shared connection, and each host is not expected to keep track of what it has sent.

UDP provides checksums for data integrity, and port numbers for addressing different functions at the source and destination of the datagram.

It does not guarantee of successful delivery, indicate the original ordering, or detect duplication, thus exposing the user's program to any unreliability of the underlying network.

(Sources: Wikipedia)

### UDP port 4000
The Internet Assigned Numbers Authority (IANA) registers port 4000 for **terabase**.
(Sources: AuditMyPC)

### UDP port 1947
In practice, port 1947 belongs to Sentinel HASP(Hardware Against Software Piracy), a hardware-based software licensing system used by thousand of commercial applications worldwide.

Common on corporate networks, engineering workstations, and any environment where expensive specialised software is licensed per-seat.

#### What Actually Runs Here
A vendor ships their software with a USB dongle (the hardware key).
When the software starts, it contacts the HASP License Manager running on your machine -- or on a license server across the network -- to verify the dongle is present and the license is valid. Without that confirmation, the software refuses to run.
Port 1947 is the address of that conversation.

The protocol uses both TCP and UDP:
- UDP 1947: Broadcast discovery ("Is there a license server out there?")
- TCP 1947: Once a server is found, all actual license communication moves here.
(Sources: Connected Systems)