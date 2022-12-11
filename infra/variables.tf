variable "candidate_id" {
  default = "jim"
  type    = string
}

variable "candidate_email" {
  default = "jim@gaffel.com"
  type    = string
}

variable "bucket_name" {
  description = "The name of the bucket to create"
  default     = "analytics-jim"
}
