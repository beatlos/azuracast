resource "hcloud_server" "server" {
  name        = "azurecast"
  server_type = "cpx11"
  image       = "rocky-9"
  location    = "nbg1"
  ssh_keys    = "hcloud_ssh_key.default.id"

  network {
    network_id = hcloud_network.network.id
    ip         = "10.0.1.5"
    alias_ips  = [
      "10.0.1.6",
      "10.0.1.7"
    ]
  }

  depends_on = [
    hcloud_network_subnet.network-subnet
  ]
}

# Create a new SSH key
resource "hcloud_ssh_key" "default" {
  name       = "automation"
  public_key = var.ssh_public_key
}
