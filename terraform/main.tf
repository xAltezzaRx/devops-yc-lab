resource "yandex_vpc_network" "devops_network" {
  name = "devops-network"
}

resource "yandex_vpc_subnet" "devops_subnet" {
  name           = "devops-subnet-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.devops_network.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}