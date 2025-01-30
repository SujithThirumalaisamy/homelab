# Make sure that the internal system-resolver is stopped in the docker's host

resource "time_sleep" "wait_10_seconds" {
  depends_on      = [null_resource.copy_folder]
  create_duration = "10s"
}

resource "null_resource" "copy_folder" {
  provisioner "local-exec" {
    command = "scp -r ./config ${var.docker_host_username}@${var.docker_host_ip}:/home"
  }
}

resource "docker_container" "bind9" {
  depends_on = [time_sleep.wait_10_seconds]
  image = "ubuntu/bind9:latest"
  name = "dns-prod-1"
  network_mode = "bridge"
  restart = "unless-stopped"
  env = [
    "TZ=Asia/Kolkata",
    "BIND9_USER=root"
  ]
  ports {
    internal = 53
    external = 53
    ip="0.0.0.0"
    protocol = "tcp"
  }
  ports {
    internal = 53
    external = 53
    ip="0.0.0.0"
    protocol = "udp"
  }
  volumes {
    host_path = "/home/config/"
    container_path = "/etc/bind/"
  }
 }


