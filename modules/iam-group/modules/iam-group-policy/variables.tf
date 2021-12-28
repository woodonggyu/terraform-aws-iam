variable "name" {
  type        = string
  description = "The name of the policy"
}

variable "groups" {
  type        = list(string)
  description = "The IAM group to attach to the policy"
}

variable "policy" {
  type        = any
  description = "The policy document"
}