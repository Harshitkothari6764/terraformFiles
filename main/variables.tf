//variable "color"{
 //   default = "black"
//}

//variable "age" {
 // default = 3
//}

//variable "name" {       
  //default = "cat"
//}

variable "prefix" {
    type = object({      //type is not necessary to define, it works w/o it
        name = string
        age = number
    })

    default = {
      age = 5
      name = "bilado"
    }
} 


output "idddd" {
  value = local_file.animal.id
}