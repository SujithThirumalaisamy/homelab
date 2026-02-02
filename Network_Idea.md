```
Homelab Network
│
├─ Router / Firewall (Multi-WAN)
│   ├─ VLAN Interfaces (Gateway + DHCP for each VLAN)
│   │   ├─ Personal VLAN (10.0.0.0/24) – Gateway: 10.0.0.1
│   │   ├─ Proxmox VLAN (10.0.64.0/24) – Gateway: 10.0.64.1
│   │   ├─ K8s VLAN (10.0.128.0/23) – Gateway: 10.0.128.1
│   │   ├─ Family VLAN (10.0.224.0/26) – Gateway: 10.0.224.1
│   │   └─ IoT VLAN (10.0.240.0/26) – Gateway: 10.0.240.1
│   └─ Firewall Rules
│       ├─ IoT VLAN → Internet only
│       ├─ Family VLAN → Internet only
│       ├─ Personal VLAN → Full access to Proxmox & K8s VLAN
│       ├─ Proxmox VLAN → Accessible only by Personal VLAN
│       └─ K8s VLAN → Accessible only by Personal VLAN
│
└─ L2 Managed Switch
    ├─ Trunk Ports
    │   ├─ Personal Devices (PC, Macbook, phone)
    │   ├─ Proxmox Cluster Nodes
    │   ├─ K8s Cluster Nodes
    │   └─ Access Point (VLAN-tagged SSIDs)
    │
    ├─ Access Ports
    │   ├─ IoT Devices → VLAN 70 (10.0.240.0/26)
    │   └─ Family Devices → VLAN 60 (10.0.224.0/26)
    │
    └─ Notes
        ├─ Trunk ports carry all VLANs for AP & server nodes
        ├─ Access ports carry only a single VLAN (IoT or Family)
        ├─ VLAN isolation enforced at router/firewall
        └─ IP ranges chosen for easy memorization (0, 64, 128, 224, 240)
```
