module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.11.3"
  gcp_project = "manifest-reach-394404"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "avx-ps-jx-terraform-state-files"
    prefix = "terraform/state"
  }
}
