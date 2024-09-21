//  HERE YOU DECLARE LOCAL VARIABLES THAT WILL BE THROUGH OUT THE PROJECT

locals {
  yaml_config = yamldecode(file("${path.module}/metadata/config.yml"))

  # sample_key = yaml_config.sample_key  # just an example
}