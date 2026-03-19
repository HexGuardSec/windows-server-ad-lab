# 📡 DHCP Server Configuration

## Overview

This section documents the deployment and configuration of a DHCP server in the Active Directory lab.

In a real enterprise environment, DHCP is used to automatically assign IP addresses and network configuration to client machines.

---

## DHCP Role Installation

The DHCP Server role was installed using Server Manager.

Screenshot:
screenshots/dhcp/01-dhcp-role-install.png

---

## Post-Installation Configuration

The DHCP server was authorized in Active Directory to allow it to distribute IP addresses.

Screenshot:
screenshots/dhcp/02-dhcp-post-install.png

---

## Scope Configuration

A DHCP scope was created to define the IP range available for clients.

Configuration:

- Range: 192.168.10.100 – 192.168.10.200
- Subnet Mask: 255.255.255.0
- Gateway: 192.168.10.1
- DNS Server: 192.168.10.10
- Domain Name: corp.local

Screenshot:
screenshots/dhcp/03-dhcp-scope-config.png

---

## Client IP Assignment Test

The client was configured to obtain an IP address automatically.

Command used:

ipconfig /renew

Screenshot:
screenshots/dhcp/04-dhcp-client-ipconfig-renew.png

---

## Validation

The client successfully received:

- An IP address within the DHCP scope
- The correct DNS server (Domain Controller)
- Network configuration automatically

Screenshot:
screenshots/dhcp/05-dhcp-server-working.png

---

## Key Takeaway

DHCP simplifies network management by automatically assigning IP configuration to clients.

In an Active Directory environment, it is critical to ensure that:

- The DNS server provided is the Domain Controller
- Only one DHCP server is active on the network