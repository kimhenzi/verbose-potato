# TCP SYN flood
Sudden spikes in incoming SYN packets to SCADA MAPS system
- Filter used: tcp.flags.syn == 1 && tcp.flags.ack == 0

## Observation

### RST (TCP port 61202 & port 445)

`22392	26.607391	192.168.127.126	192.168.127.6	TCP	60	61202 → 445 [SYN] Seq=0 Win=1024 Len=0 MSS=1460`

`22395	26.607760	192.168.127.6	192.168.127.126	TCP	60	445 → 61202 [SYN, ACK] Seq=0 Ack=1 Win=64240 Len=0 MSS=1460`
#### SYN-ACK
- It tells the client that the endpoint is listening and that the connection can proceed to the final ACK, so it is a core signal in normal session establishment as well as in reconnaissance.
- Because the exchange happens before application data flows, defenders often treat SYN-ACK traffic as an early indicator of reachable services, exposed ports, and connection attempts that merit closer inspection.

#### Why SynAck matters for exposure and attack visibility
When a service returns SYN-ACK, it confirms that something is reachable at the network and transport layers.
That makes the handshake useful to administrators, but also to attackers who are mapping live hosts, confirming open ports, or identifying services that respond consistently under scan pressure.

#### Risk and Threat Considerations
SynAck is a low-level control point that attackers can use for both discovery and disruption.
A service that answers too predictably to scanning can expose its presence, while a service that must maintain many half-open connections can be pressured into wasting resources.
- Failure mechanism: Attackers exploit the gap between SYN and the final ACK to confirm reachability, map exposed services, or consume server-side connection state before a session is established.
- Impact: The result can be service enumeration, noisy but effective reconnaissance, connection table exhaustion, reduced availability, and a weaker ability to distinguish benign traffic from hostile probing.
(Sources: nhimg.org/glossary/synack/)

`22396	26.608189	192.168.127.126	192.168.127.6	TCP	60	61202 → 445 [RST] Seq=1 Win=0 Len=0`
#### TCP SYN (Stealth) scan
SYN scan is the default and most popular scan option.
- Can be performed quickly, scanning thousands of ports per second on a fast network not hampered by intrusive firewalls.
- SYN scan is relatively unobtrusive and stealthy, since it never completes TCP connections.
(SYN scan may be requested by passing the `-sS` option to Nmap.)

If the SYN/ACK is ignored completely, target will assume it was dropped and keep re-sending it. 
The proper response is, since we don't want to make a full connection, is a RST packet. This tells the target to forget about (reset) the attempted connection.
Because the three-way handshake is never completed, SYN scan is sometimes called half-open scanning.
(Sources: Nmap)

#### TCP port 445 (SMB)
Port 445 is a network port used by the SMB protocol that is integral to accessing shared resources on a network.
SMB operatesat the application layer and allows nodes within a network to communicate, share files, and utilise shared services like printers and access to shared directories.
Its role is foundational for intra-network communication and resource sharing, particularly in Windows-operated network environments. (Sources: SecurityScorecard)