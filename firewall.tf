resource "hcloud_firewall" "web" {
  name = "web"

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = [ "80", "443" ]
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
  
}
