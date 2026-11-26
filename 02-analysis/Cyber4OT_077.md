# ***Nmap full scan of potential PLC device***
- The target responds with `RST, ACK` packets, confirming that these ports are closed; if a port were open or filtered, there would typically be no reponse at all.
  
(Sources: thecyberfort.net)

## tcp.stream eq 3

`34	2.826467	192.168.127.6	192.168.127.21	TCP	60	[TCP ACKed unseen segment] 53922 → 502 [ACK] Seq=1 Ack=2 Win=62929 Len=0`

### TCP ACKed unseen segment
Indicates that this trace file does not contain the data packet for this acknowledgement.

`86	8.003832	192.168.127.21	192.168.127.6	TCP	60	[TCP Dup ACK 33#1] 502 → 53922 [ACK] Seq=1 Ack=1 Win=5840 Len=0`

### TCP Dup ACK

#### Causes:
1. Out-of-Order Packets: When packets are received out of order, the receiver sends DUPACKs for the last in-sequence packet received.
2. Packet Loss: If a packet is lost, subsequent packets will generate DUPACKs until the missing packet is retransmitted and successfully received.

#### TCP Fast Retransmit and Fast Recovery:
If a sender receives three consecutive DUPACKs, it infers that a packet has likely been lost and retransmits the missing packet without waiting for the retransmission timer to expire.

(Sources: Medium @alimoajiz999)