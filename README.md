# S3-бакет в Yandex Cloud через Terraform

## Как запустить
1. Установите [Terraform](https://www.terraform.io/downloads.html) и [Yandex Cloud CLI](https://cloud.yandex.ru/docs/cli/quickstart)
2. Получите свои Cloud ID, Folder ID и IAM-токен (или OAuth-токен):
   - Cloud ID: `yc config get cloud-id`
   - Folder ID: `yc config get folder-id`
   - Токен: `yc iam create-token`
3. Создайте сервисный аккаунт с ролями `storage.admin`, `storage.uploader`, `storage.viewer` и выпустите для него access/secret key (см. [инструкцию](https://cloud.yandex.ru/docs/iam/operations/sa/create))
4. Заполните файл `terraform.tfvars` своими значениями:
   ```hcl
   yc_cloud_id  = "..."
   yc_folder_id = "..."
   yc_token     = "..."
   bucket_name  = "my-unique-bucket-name"
   access_key   = "..."
   secret_key   = "..."
   ```
5. Запусти:
   ```bash
   terraform init
   terraform apply
   ```
6. Бакет появится в Object Storage Яндекса.

## Как проверить
- Зайти в консоль Яндекс.Облака → Object Storage 

## Удалить всё
```bash
terraform destroy
```

---
