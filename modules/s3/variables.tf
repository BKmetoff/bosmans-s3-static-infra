
variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "bucket_tags" {
  description = "A map of tags to add to the bucket"
  type        = map(string)
}

variable "bucket_acl" {
  description = "ACL of the bucket objects"
  type        = string
}

variable "website" {
  description = "Weather a website configuration should be applied to the bucket"
  type        = bool
  default     = false
}

variable "website_files_path" {
  description = "The path to the content of the website files"
  type        = string
}

variable "files" {
  description = "A fileset of the website files"
  type        = any
}

variable "mime_types" {
  description = "The mime types of the website files"
  type        = map(string)
}

variable "index_document" {
  description = "The title of the index document"
  type        = string
}

variable "error_document" {
  description = "The title of the error document"
  type        = string
}
