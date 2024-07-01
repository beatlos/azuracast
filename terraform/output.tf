output "public_ips" {
  value = hcloud_server.server.ip_address.public_net
}
