
################################################
#  Apply nginx ingress controller manifest file
################################################

resource "null_resource" "ingress_nginx" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${var.ingress} --kubeconfig ${module.eks.kubeconfig_filename} "
  }
  depends_on = [
    module.eks
  ]
}
################################################
#  Creating a custom namespace 
################################################

resource "kubernetes_namespace" "app" {
  metadata {
    name = var.default_namespace
  }

}
