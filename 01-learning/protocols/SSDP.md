# SSDP (Simple Service Discovery Protocol)
A network protocol, associated with the Internet protocol suite for advertisement and discovery of network services and presence information.
It accomplishes this without the assistance of server-based configuration mechanisms, such as DHCP (Dynamic Host Configuration Protocol) or DNS (Domain Name System).
SSDP is the basis of the discovery protocol of **Universal Plug and Play (UPnP)** and is intended for use in residential or small office environments.
- **Universal Plug and Play (UPnP):** Permits networked devices to seamlessly discover each other's presence on the network and establish functional network services.
  - UPnP assumes the network runs IP, and then uses HTTP on top of IP to provide device/service description, actions, data transfer and event notification.
  - Device search requests and advertisements are supported by running HTTP on top of UDP (port 1900) using multicast (known as HTTPMU).
  - Response to search requests are also sent over UDP, but are instead sent using unicast (known as HTTPU)
  - UPnP devices are plug-and-play in that, when connected to a network, they automatically establish working configurations with other devices, removing the need for users to manually configure and add devices through IP addresses.

## Protocol transport and addressing
SSDP is a text-based protocol based on HTTPU, which uses **UDP** as the underlying transport protocol.

<img width="651" height="318" alt="image" src="https://github.com/user-attachments/assets/e5224c69-2b19-43c7-a279-9bf0b01cfb5d" />


Services are announced by the hosting system with multicast addressing to a specifically designated IP multicast address at UDP port number 1900.

<img width="522" height="397" alt="image" src="https://github.com/user-attachments/assets/5d29eb6b-bc93-4e83-add7-0c9cfdf0602b" />


(Sources: Wikipedia)
