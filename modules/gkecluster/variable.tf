variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  default     = "tri-cluster"
}
variable "node_count" {
  description = "The number of nodes in the cluster."
  default     = 2
}

variable "machine_type" {
  description = "The machine type of the nodes."
  default     = "n1-standard-1"
}

variable "zone" {
default = "us-central1-a"

}

variable "vpc" {
  description = "using private VPC"
  default = ""
  
}

variable "privatesub" {
    description = "using private subnet"
    default = ""
  
}