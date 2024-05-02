resource "local_file" "whale" {
  filename = "/Users/kroos31/Desktop/linux/terraform/explicit-dependency/whale.txt"
  content = "whale"
  depends_on = [ local_file.krill ]
}
resource "local_file" "krill" {
  filename = "/Users/kroos31/Desktop/linux/terraform/explicit-dependency/krill.txt"
  content = "krill"
}