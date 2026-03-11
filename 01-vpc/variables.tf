variable "project_name" {
    default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "public_subnet_cidrs" {
    default = ["10.0.31.0/24","10.0.32.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["10.0.41.0/24","10.0.42.0/24"]
}

variable "database_subnet_cidrs" {
    default = ["10.0.51.0/24","10.0.52.0/24"]
}

variable "is_peering_required" {
  default = true
}