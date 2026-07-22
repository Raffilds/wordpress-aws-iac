terraform {
  backend "s3" {
    key          = "wordpress/dev/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}
