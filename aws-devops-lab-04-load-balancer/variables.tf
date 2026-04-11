variable "key_name" {
  description = "AWS key pair name"
  type = string
}

variable "instance_type" {
  description = "Type EC2"
  type        = string
  default     = "t3.micro"
}
