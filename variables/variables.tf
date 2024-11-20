#1.command line 
#2.terraform.tfvars
#3.environament variables ,TF_VAR_your_variable_name
#4.default

variable "ami_id" {
    type        = string 
    default     = "ami-09c813fb71547fc4f"
    description = "This is AMI Id of devops-practice which is RHEL-9"
}


variable "instance_type" {
    type    = string
    default = "t3.micro" #default variable
}


variable "tags" {
    type    = map
    default = {
        Name    = "backend"
        Project = "expense"
        Component   = "backend"
        Environment = "DEV"
        terraform   = "true"
    }
}

variable "sg_name" {
    default = "allow-ssh"

}


variable "sg_description" {
    default = "Allow port 22 for ssh access"    

}

variable "from_port" {
    default = 22
    type = number    

}

variable "to_port" {
    default = 22
    type = number    
}


variable "protocal" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}