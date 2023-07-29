provider "google" {
  credentials = file("./tricustom-task-e930dc9bc61e.json")
  project = var.project
  region = var.region
  zone = var.zone
}