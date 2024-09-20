terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.129.0"
    }
  }
  required_version = ">= 0.61.0"
}

provider "yandex" {
  token     = var.token_id
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = "ru-central1-a"
}

# Создаем сервис-аккаунт SA
resource "yandex_iam_service_account" "sa" {
  folder_id = var.folder_id
  name      = "sa-soul"
}

# Даем права на запись для этого SA
resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
  folder_id = var.folder_id
  role      = "admin"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

resource "yandex_vpc_network" "network" {
  name = "network"
}
resource "yandex_vpc_subnet" "subnet1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.9.0/24"]
}

module "vm1" {
  source    = "./modules/instance"
  name      = "vm1"
  cores     = 2
  memory    = 2
  image_id  = "fd8vn1ps009605ktnklq" # Ubuntu 20.04 image ID
  disk_size = 20
  subnet_id = yandex_vpc_subnet.subnet1.id
}

module "vm2" {
  source    = "./modules/instance"
  name      = "vm2"
  cores     = 2
  memory    = 2
  image_id  = "fd8vn1ps009605ktnklq" # Ubuntu 20.04 image ID
  disk_size = 20
  subnet_id = yandex_vpc_subnet.subnet1.id
}

module "vm3" {
  source    = "./modules/instance"
  name      = "vm3"
  cores     = 2
  memory    = 2
  image_id  = "fd8qfp90a5l0m3d2htrm" # CentOS 8 image ID
  disk_size = 20
  subnet_id = yandex_vpc_subnet.subnet1.id
}
