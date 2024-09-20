variable "name" {
  description = "VM name"
  type        = string
}

variable "cores" {
  description = "Number of CPU cores"
  type        = string
}

variable "memory" {
  description = "RAM in GB"
  type        = string
}

variable "image_id" {
  description = "ID of the image"
  type        = string
}

variable "disk_size" {
  description = "Size of the boot disk in GB"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}
