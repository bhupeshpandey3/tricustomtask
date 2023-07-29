variable "project" {
  type = string

  # This is the default value for the variable.
  default = "tricustom-task"
}

variable "region" {
  type = string

  # This is the default value for the variable.
  default = "us-central1"
}

variable "zone" {
  description = "The zone where the cluster will be created."
  default     = "us-central1-a"
}