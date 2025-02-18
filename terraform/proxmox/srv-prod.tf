resource "proxmox_vm_qemu" "srv-prod-1" {
  target_node = "pve1"
  vmid        = "201"
  name        = "srv-prod-1"
  desc        = "Production Server 1"

  onboot = true

  clone = "ubuntu-jammy-base"

  cores   = 2
  sockets = 1
  memory  = 2048

  network {
    id     = "0"
    bridge = "vmbr0"
    model  = "virtio"
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.1/16,gw=1.1.1.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}

resource "proxmox_vm_qemu" "srv-prod-2" {
  target_node = "pve1"
  vmid        = "202"
  name        = "srv-prod-2"
  desc        = "Production Server 2"

  onboot = true

  clone = "ubuntu-jammy-base"

  cores   = 2
  sockets = 1


  memory = 2048

  network {
    id     = "0"
    bridge = "vmbr0"
    model  = "virtio"
  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.2/16,gw=1.1.1.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}

resource "proxmox_vm_qemu" "srv-prod-3" {
  target_node = "pve1"
  vmid        = "203"
  name        = "srv-prod-3"
  desc        = "Production Server 3"

  onboot = true

  clone = "ubuntu-jammy-base"

  cores   = 2
  sockets = 1

  memory = 2048

  network {
    id     = "0"
    bridge = "vmbr0"
    model  = "virtio"

  }

  os_type = "cloud-init"

  ipconfig0 = "ip=10.0.10.3/16,gw=1.1.1.1"

  ciuser = "sujith"

  sshkeys = <<EOF
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINDtOZ5BTq9UQJerDj4NMZkwd/s4h4gkU/Ik27F7zlWx sujithmasi1267@gmail.com
    EOF
}
