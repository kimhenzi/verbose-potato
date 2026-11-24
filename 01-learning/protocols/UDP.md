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