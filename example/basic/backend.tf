terraform {
  backend "remote" {
    organization = "atyeti-inc"

    workspaces {
      prefix = "WAForge-landing-zone"
    }
  }
}
