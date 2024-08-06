locals {

datasets = {
   for file in fileset(path.module, "modules/resource/datasets/*json") :
    file => ( jsondecode(file("${path.module}/${file}")))

 }

tables = {
   for file in fileset(path.module, "modules/resource/tables/*json") :
    file => ( jsondecode(file("${path.module}/${file}")))

 }
}
