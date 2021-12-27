variable "users" {
  type        = list(string)
  description = "The user's name"
}

variable "path" {
  type        = string
  description = "Path in which to create the user"
  default     = "/"
}

variable "permissions_boundary" {
  type        = string
  description = "The ARN of the policy that is used to set the permissions boundary for the user"
  default     = null
}

variable "force_destroy" {
  type        = bool
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices"
  default     = false
}

variable "tags" {
  type        = list(map(string))
  description = "Key-value map of tags for the IAM user"
  default     = null
}

variable "status" {
  type        = string
  description = "Access key status to apply"
  default     = "Active"
}

variable "pgp_keyfile" {
  type        = string
  description = "The Keyfile of Either a base-64 encoded PGP public key for use in the encrypted_secret output attribute"
}

variable "password_length" {
  type        = number
  description = "The length of the generated password on resource creation"
  default     = 20
}

variable "password_reset_required" {
  type        = bool
  description = "Whether the user should be forced to reset the generated password on resource creation"
  default     = true
}