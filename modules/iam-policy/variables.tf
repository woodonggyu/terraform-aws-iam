variable "create_policy" {
  type        = bool
  description = "Whether create policy, or not"
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the policy"
  default     = null
}

variable "path" {
  type        = string
  description = "Path in which to create the policy"
  default     = "/"
}

variable "description" {
  type        = string
  description = "Description of the IAM policy"
  default     = null
}

variable "policy" {
  type        = any
  description = "The policy document"
}

variable "tags" {
  type        = map(string)
  description = "Map of resource tags for the IAM Policy"
  default     = null
}

variable "attachment" {
  type        = list(any)
  description = "The groups and ARN the policy should be applied to"
  default     = []
}