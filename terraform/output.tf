output "public_ips" {
  value = hcloud_floating_ip.master.ip_address
}
