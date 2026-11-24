*(README.txt) Nmap ping scan of test bed ICS network (Industrial Control System network) using various modes: from Insane (-T5) to Sneaky (-T1).
Traffic gathered from central switch.
If scan is very long, trace is stopped after 10 minutes.*

# Attack methods

## Nmap Timing Templates (-T)
Allow user to specify how aggressive they wish to be, while leaving Nmap to pick the exact timing values. (Sources: Nmap.org)

### Template names: paranoid (0), sneaky (1), polite (2), normal (3), aggressive (4), and insane (5)
- The first two are for **IDS evasion**
- Polite (2) slows down the scan to use less bandwidth and target machine resources
- Aggressive (4) speeds scans up by making the assumption that you are on a reasonably fast and reliable network.
- Insane (5) assumes that you are on an extraordinarily fast network or ar willing to sacrifice some accuracy for speed.


# Observations
52:5d:c9:36:7e:c6 (192.168.127.126) performed Nmap scan, which resulted in lots of ARP packets

- Scope: 192.168.127.1-250

## 1. Repeated ARP requests 

### For 192.168.127.250
- src: Mitsubishi GOT2 HMI (192.168.127.24)
- dst: Broadcast
- with intervals of two seconds

### For 192.168.127.127
- No response
- UDP port 1947

## 2. UDP packet 54554 -> 1947