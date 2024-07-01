# Create a new SSH key
resource "hcloud_ssh_key" "default" {
  name       = "automation"
  public_key = var.ssh_public_key
}
