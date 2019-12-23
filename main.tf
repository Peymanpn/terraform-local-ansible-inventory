resource "local_file" "inventory" {
  content  = templatefile("${path.module}/inventory.tpl", { servers = var.servers })
  filename = "${var.output}/hosts"

  provisioner "local-exec" {
    command = "mkdir -p ${var.output}/secrets && gcloud auth print-access-token > ${var.output}/secrets/gcr_token"
  }
}

resource "local_file" "secrets" {
  for_each = var.secrets

  sensitive_content = each.value
  filename = "${var.output}/secrets/${each.key}"
}
