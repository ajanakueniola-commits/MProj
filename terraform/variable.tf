variable "region" {
  default = "us-east-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "c7i-flex.large"
}

variable "ami_id" {
  default = ""
}

variable "packer_ami_owner" {
  default = ""
}

variable "packer_ami_name_pattern" {
  default = ""
}

variable "db_username" {
  type = string
  default = "appuser"
}

variable "db_password" {
  type      = string
  sensitive = true
  default = "StrongPassw0rd!2025"
}
variable "db_name" {
  type = string
  default = "gracedb"
}
variable "private_subnet_cidrs" {
  type = list(string)
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
}
variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}
variable "key_name" {
  type        = string
  default     = "ohio123"
}