variable "instance_name" {
  description = "DevAppServerInstance EC2 instance for dev environment"
  type        = string
  default     = "DevAppServerInstance01"
}

variable "instance_ami"{
    description = "ami for instance"
    type        = string
    default = "ami-08d70e59c07c61a3a"
}

variable "key_name"{
    description = "ssh key"
    type        = string
    default = "aws_kms_key"
}