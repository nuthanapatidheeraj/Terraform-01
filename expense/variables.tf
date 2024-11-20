variable "instance_names"{
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z08755441OQ2ZBJDD5LE8"
}


variable "domain_name" {
    default = "daws81.tech"
}