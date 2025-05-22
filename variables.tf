variable "yc_cloud_id" {
  description = "Yandex Cloud Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "yc_token" {
  description = "Yandex Cloud OAuth token или IAM token"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Уникальное имя бакета"
  type        = string
}

variable "access_key" {
  description = "Storage service account access key"
  type        = string
}

variable "secret_key" {
  description = "Storage service account secret key"
  type        = string
  sensitive   = true
} 