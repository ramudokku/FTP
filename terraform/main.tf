
resource "aws_instance" "My-Webserver" {
 count = var.instance_count 
 ami = var.ami
 instance_type = var.instance_type
 vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
 tags = {
	 Name = "My-Webserver-${count.index}"
 }
 key_name = "ubuntu_login"
# user_data = "$file(installNginx.sh})"


user_data = <<-EOF
	#!/bin/bash
         /usr/bin/apt-get update
        DEBIAN_FRONTEND=noninteractive /usr/bin/apt-get upgrade -yq
        /usr/bin/apt-get install nginx -y
	/bin/echo "Hello world " >  /var/www/html/index.nginx-debian.html
       	EOF

}

