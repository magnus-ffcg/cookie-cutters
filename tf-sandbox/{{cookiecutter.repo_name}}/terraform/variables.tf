# This is the variables that are used in the project, 
# here you often just specify the bare minimum.

variable "project" {
    type = string
    default = ""
}

variable "region" {
    type = string
    default = ""
}

variable "impersonate_service_account" {
  type = string
  default = ""
}