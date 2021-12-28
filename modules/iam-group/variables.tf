variable "create_group" {
  type        = bool
  description = "Whether create group or not"
  default     = false
}

variable "groups" {
  type        = list(string)
  description = "The group's name"
  default     = null
}

variable "path" {
  type        = string
  description = "Path in which to create the group"
  default     = "/"
}

variable "create_group_membership" {
  type        = bool
  description = "Whether create group membership or not"
  default     = true
}

variable "group_name" {
  type        = string
  description = "The name to identify the Group Membership"
  default     = null
}

variable "group_users" {
  type        = list(string)
  description = "A list of IAM User names to associate with the Group"
  default     = null
}