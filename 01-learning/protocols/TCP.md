## TCP Port 502
The complete Modbus TCP/IP Application Data Unit is embedded into the data field of a standard TCP frame and sent via TCP to well-known system port 502, which is specifically reserved for Modbus applications.

Modbus TCP/IP clients and servers listen and receive Modbus message over Ethernet via port 502.

(Sources: Introduction to Modbus TCP/IP)


## TCP Port 139
The original SMB port, running as an application-layer protocol over NetBIOS on local Windows networks.
Windows 2000 introduced port 445 as a replacement, and most modern environments have phased out port 139 in favour of it.

If port 139 is open anywhere on your network, you're carrying legacy attack surface you probably don't need.
NetBIOS-based traffic has no signing or encryption backstop of its own, which is exactly what let EternalBlue-class exploits spread unchecked in attacks like WannaCry.

Port 445 is more defensible, but only if SMB signing is enabled; otherwise, it's exposed to the same relay and privilege-escalation techniques behind CVE-2025-33703.

(Sources: Netwrix)


## TCP Port 3389

### RDP (Remote Desktop Protocol)
A proprietary protocol developed by MS which provides a user with a graphical interface to connect to another computer over a network connection
- By default, the server listens on **TCP port 3389** and **UDP port 3389**.

(Sources: Wikipedia)


## TCP Port 135
The **RCP** endpoint mapper for Windows hosts.
It helps clients find the right **remote procedure call (RPC)** service before a later connection is made, so it is a coordination point rather than the payload channel itself.
That makes it part of the trust path for remote management and remote execution workflows.

### RPC (Remote Procedure Call)
(In distributed computing) an action in which a computer causes a procedure (subroutine) to execute in a different address space of the current process (commonly on another computer on a shared computer network), which is written as if it were a normal (local) procedure call, without the programmer explicitly writing the details for the remote interaction.

### Security
Because it brokers service discovery for RPC, port 135 should be treated as an entry point with security significance even when another por such as **445** is already blocked.
If it remains reachable where it is not needed, it can still help an attacker enumerate services, map the host, or reach follow-on management functions.

(Sources: nhimg.org)


## TCP Port 5357
**WSDAPI (Web Services on Devices API)** uses TCP port 5357 for HTTP traffic and TCP port 5358 for HTTPS traffic by default.
These ports are reserved for lower privilege processes through a URL reservation in HTTP.sys, and are also reserved with IANA. (Sources: Microsoft Learn)

### Used for: 
- Windows **network device discovery** over WSD -- finding and using WSD printers, scanners, and other devices via the Web Services on devices API 
- Letting a PC advertise itself to other devices on the LAN.
- Port 5357 is opened on Windows (Vista, 7, 8, 10, and 11) by WSDAPI.

### Common Risks
- **Information disclosure / fingerprinting:** WSD device metadata leaks hostnames, OS and device model, and the presence of WSD printers/scanners.
  - An open 5357 is also a reliable *"this is a Windows host with Network Discovery on"* signal during recon -- low severity on its own, but useful for profiling.
- A historic WSDAPI RCE: On Windows Vista and Server 2008, a crafted WSD packet could trigger remote code execution.
  - **CVE-2009-2512 (MS09-063)** -- The Web Service on Devices API Memory Corruption Vulnerability.
    - WSDAPI does not correctly validate the headers of a received WSD message, so a specially crafted packet to TCP 5357/5358 could allow remote code execution with full control of the system.
    - Only attackers on the local subnet can exploit it

(Sources: PentestPad)


## TCP Port 4840
Default port for **OPC UA (Open Platform Communications Unified Architecture)**, the modern, vendor-neutral protocol that has become interoperability backbone of Industry 4.0 and the Industrial Internet of Things (IIoT).

### OPC UA (Open Platform Communications Unified Architecture)
- OPC UA is the successor to the old Windows-and-DCOM-bound OPC Classic, and it is how PLCs, SCADA system, MES (Manufacturing Execution System), and historians from different vendors exchange process data on a plant floor.
- Exists specifically so that SCADA/HMI, a MES, a data historian, or a cloud/IIoT gateway can pull live data out of PLCs and controllers and push commands back -- across vendors and across the IT/OT boundary.

### Common Risks
- **`SecurityPolicy=None` + Anonymous access:** The dominant risk.
  - OPC UA's authentication, signing, and encryption are optional SecurityPolicies, and in the field they are very frequently left off.
- Full address-space exposure: Once connected, an attacker can browse the entire node tree, enumerating every variable, object, and method the server exposes -- effectively a live map of the process and its tags.
  
(Sources: PentestPad)


## TCP Port 102
Lets industrial control systems (ICS) communicate over the Internet using the **ISO Transport Service** over TCP/IP protocol.
This allows applications access to the benefits of both the ISO Transport protocol and the TCP/IP protocol.

### Background
Many industrial control systems use the ISO Transport protocol when communicating with each other because of its **package-oriented tranfer** of data.
- This type of data transfer is preferable over TCP/IP and its streaming transfer of data.
- However, the ISO Transport protocol lacks the ability to route data over the Internet, hence need to combine the two protocols.

The ISO Transport Service over TCP/IP protocol allows systems to use both the ISO Transport protocol and the TCP/IP protocol. It implements this by transferring data over port 102 between a client and a server.

### Used For
Transfer data between industrial control systems, such as those available from **Siemens**.
This allows you to transfer data using packages and route it over the Internet.

(Sources: CBT Nuggets)

## TCP Port 5900

### VCN (Virtual Network Computing) Protocol
A cross-platform remote access protocol.

(Sources: Hosting B2B)


## TCP Port 995
The default port for POP3 over SSL/TLS (POP3S)

Major providers use it: Gmail, Outlook/Microsoft 365, and Yahoo Mail

Attackers commonly target this port for credential brute-force against POP3S login when the service is exposed to the internet.

(Sources: Internet-Security.com)


## TCP Port 21: 
### FTP (File Transfer Protocol)
An old protocol and its control channel is frequently associated with legacy file movement, administrative workflows, and unmanaged internet exposure.

Even when the service is intended for a narrow business purpose, an open listenre can reveal operational detail and expand the reachable attack surface.

(Sources: nhimg.org)


## TCP Port 3306
### MySQL database connection

(Sources: nhimg.org)


## TCP Port 25
### SMTP
The standard network port for server-to-server email transfer.

- Attackers abuse it for spam, phishing delivery, and mail relay abuse when controls are weak.

(Sources: nhimg.org)

## TCP Port 111
Dedicated to the **Remote Procedure Call (RPC)** portmapper service, which allows RPC clients to discover what ports RPC services are available.

The RPC portmapper service allows RPC services on **UNIX-like systems** to register at which ports their services are available so that RPC clients can call them.

(Sources: CBT Nuggets)

## TCP Port 554
### RTSP (Real-Time Streaming Protocol)
Used for controlling live video and audio streams from IP cameras, NVRs (Network Video Recorder), DVRs (Digital Video Recorder), and media servers

In the real world, an open port 554 almost always means one thing: an IP camera, NVR/DVR, or media server exposing a live video feed. That's why it's one of the first ports worth chasing on any host -- if the stream isn't locked down, anyone who can reacy 554 can watch it.

(Sources: PentestPad)

## TCP Port 993
### IMAPS (IMAP over SSL)
The same Internet Message Access Protocol that runs in cleartext on port 143, but wrapped in TLS from the very first byte.

An open port 993 is rarely about breaking the encryption; it is about what the encryption doesn't cover -- the credentials in front of the tunnel and the mailbox behind it.

IMAPS is how most mail clients are meant to **read** mail.

(Sources: PentestPad)


## TCP Port 8080
### An alternate HTTP listener
A commonly used alternative **HTTP** port for web applications, proxies and administration interfaces.
Because it often hosts non-production or management services, it is frequently exposed with weak authentication or outdated software.

### Security Risks
A management interface on 8080 can reveal version banners, default login flows, dianostic endpoints or administrative functions that attackers can enumerate and abuse.

(Sources: nhimg.org)

## TCP Port 1723
### PPTP (Point-to-Point Tunneling Protocol)
The control channel for PPTP VPNs, a legacy Microsoft VPN with cryptographically broken authentication (data rides GRE, Generic Routing Encapsulation)

(Sources: PentestPad)