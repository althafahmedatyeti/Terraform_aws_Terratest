/*terraform {
  backend "remote" {
    organization = "atyeti-inc"

    workspaces {
      prefix = "WAForge-landing-zone"
    }
  }
}*/
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
