variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of instance to start"
  default     = "t3.micro"
}

variable "ami_filters" {
  description = "Filters used to select a specific AMI"
  type = map(object({
    name   = string
    values = list(string)
  }))
  default = {
    name = {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    },
    type = {
      name   = "virtualization-type"
      values = ["hvm"]
    }
  }
}

variable "ami_owners" {
  description = "List of owners for the AMI to limit search"
  default     = ["099720109477"]  # Canonical's owner ID
}
