resource "local_file" "inventory" {
  content  = templatefile("${path.module}/inventory.tpl", { servers = var.servers })
  filename = "${var.output}/hosts"
}

resource "local_file" "secrets" {
  for_each = var.secrets

  sensitive_content = each.value
  filename = "${var.output}/secrets/${each.key}"
}
