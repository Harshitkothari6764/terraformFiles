resource "local_file" "human" {
  filename = "depend.txt"
  content = "${local_file.animal.id}"    //example of attribute
}

resource "local_file" "animal" {
    filename = "cat.txt"
    content = var.prefix.age
}

