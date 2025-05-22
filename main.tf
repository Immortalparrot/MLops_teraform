terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.84.0"
    }
  }
}

provider "yandex" {
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  token     = var.yc_token
  storage_access_key = var.access_key
  storage_secret_key = var.secret_key
}

resource "yandex_storage_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  anonymous_access_flags {
    read = false
    list = false
  }
}

output "bucket_domain_name" {
  value = yandex_storage_bucket.my_bucket.bucket_domain_name
} 