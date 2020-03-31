provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}
####
# output
####
output "t" {
	description = "La IP pub de..."
 	value = "${aws_instance.example.public_ip}"
}

resource "aws_instance" "example" {
	ami           = "ami-0fc61db8544a617ed"
	instance_type = "t2.nano"
	key_name	= "peg"
	user_data = "${file("install_apache")}"
	vpc_security_group_ids  = ["sg-01d0fb5d93537bded","sg-0f9669d5985e6ccac"]
	
tags= {
	Name = "AR-FE-1"
	Ceco = "CSC95TEC"

	}

volume_tags= {
	Name = "AR-FE-1"
	Ceco = "CSC95TEC"
	}
}


