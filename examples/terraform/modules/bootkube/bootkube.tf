# Self-hosted Kubernetes assets (kubeconfig, manifests)
module "bootkube" {
  source = "git::https://github.com/dghubble/bootkube-terraform.git?ref=4d0ce629d1d97f1814d6d4733e9b0da036f948e1"

  cluster_name                  = "${var.cluster_name}"
  api_servers                   = ["${var.k8s_domain_name}"]
  etcd_servers                  = ["${var.controller_domains}"]
  asset_dir                     = "${var.asset_dir}"
  pod_cidr                      = "${var.pod_cidr}"
  service_cidr                  = "${var.service_cidr}"
  experimental_self_hosted_etcd = "${var.experimental_self_hosted_etcd}"
}
