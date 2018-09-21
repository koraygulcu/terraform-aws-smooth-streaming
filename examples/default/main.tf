provider "aws" {
  region = "eu-west-2"
}

module "smooth_streaming" {
  source = "../../"
  bucket = "terraform.test.koraygulcu.github.com"
}
