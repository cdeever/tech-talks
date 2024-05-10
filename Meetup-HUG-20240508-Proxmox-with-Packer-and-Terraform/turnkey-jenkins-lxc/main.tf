terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }

    opnsense = {
      source = "gxben/opnsense"
    }
  }  
}


resource "proxmox_lxc" "jenkins_container" {
  #  vmid        = "105"
  target_node = "pve"
  ostemplate  = "local:vztmpl/debian-11-turnkey-jenkins_17.1-1_amd64.tar.gz"
  description = "Turnkey Jenkins"
  cpulimit    = 4
  cpuunits    = 2048
  memory      = 8096
  swap        = 8096
  rootfs {
    storage = "local-lvm-big"
    size    = "32G"
  }
  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
  password = "jenkins-admin"
  onboot       = false
  unprivileged = true
  features {
    nesting = true
  }
}

