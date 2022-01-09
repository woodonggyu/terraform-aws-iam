variable "create_role" {
  type        = bool
  description = "Whether create role, or not"
  default     = true
}

variable "name" {
  type        = string
  description = "Friendly name of the role"
  default     = null
}

variable "description" {
  type        = string
  description = "Description of the role"
  default     = null
}

variable "path" {
  type        = string
  description = "Path to the role"
  default     = "/"
}

variable "force_detach_policies" {
  type        = bool
  description = "Whether to force detaching any policies the role has before destroying it"
  default     = false
}

variable "max_session_duration" {
  type        = number
  description = "Maximum session duration (in seconds) that you want to set for the specified role"
  default     = 3600
}

variable "permissions_boundary" {
  type        = string
  description = "ARN of the policy that is used to set the permissions boundary for the role"
  default     = null
}

variable "assume_role_policy" {
  type        = any
  description = "Policy that grants an entity permission to assume the role"
}

variable "managed_policy_arns" {
  type        = list(string)
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Key-value mapping of tags for the IAM role"
  default     = null
}

variable "attachment" {
  type        = list(any)
  description = "The name and ARN of the IAM role to which the policy should be applied"
}