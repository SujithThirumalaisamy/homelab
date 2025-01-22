resource "proxmox_vm_qemu" "srv-prod-1" {
  target_node = "proxmox"
  vmid        = "101"
  name        = "srv-prod-1"
  desc        = "Production Server 1"

  onboot = true

  clone = "ubuntu-jammy-base"

  agent   = 1
  cores   = 1
  sockets = 1
  cpu     = "host"

  memory = 2048

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.1/16,gw=10.0.50.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}

resource "proxmox_vm_qemu" "srv-prod-2" {
  target_node = "proxmox"
  vmid        = "102"
  name        = "srv-prod-2"
  desc        = "Production Server 2"

  onboot = true

  clone = "ubuntu-jammy-base"

  agent   = 1
  cores   = 1
  sockets = 1
  cpu     = "host"

  memory = 2048

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.2/16,gw=10.0.50.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}

resource "proxmox_vm_qemu" "srv-prod-3" {
  target_node = "proxmox"
  vmid        = "103"
  name        = "srv-prod-3"
  desc        = "Production Server 3"

  onboot = true

  clone = "ubuntu-jammy-base"

  agent   = 1
  cores   = 1
  sockets = 1
  cpu     = "host"

  memory = 2048

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.3/16,gw=10.0.50.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}
