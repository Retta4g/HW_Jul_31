variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Should be true if instances launched into the subnet should be assigned a public IP address"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name tag for the subnet"
  type        = string
  default     = "my-subnet"
}
