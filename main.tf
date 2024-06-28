provider "aws" {
  region = var.region  # Use the variable
}

data "aws_ami" "ubuntu" {
  most_recent = true

  dynamic "filter" {
    for_each = var.ami_filters
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }

  owners = var.ami_owners
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type  # Use the variable

  tags = {
    Name = "HelloWorld"
  }
}
