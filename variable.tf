variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "common_tags" {
  default = {
    Project = "live"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  type = string
  default = "live"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "public_subnets_cidr" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

