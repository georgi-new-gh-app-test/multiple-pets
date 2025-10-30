resource "random_pet" "example" {
  count = 10

  length    = 3
  separator = "-"
}

output "random_pet_names" {
  value = random_pet.example[*].id
}

resource "random_pet" "name2" {
  count = 10

  length    = 3
  separator = "-"
}

output "random_pet_names2" {
  value = random_pet.name2[*].id
}
