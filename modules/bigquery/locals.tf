locals {

datasets = {
   for file in fileset(path.module, "modules/resource/datasets/*json") :
    file => ( jsondecode(file("modules/resource/datasets/${file}")))

 }

tables = {
   for file in fileset(path.module, "modules/resource/tables/*json") :
    file => ( jsondecode(file("modules/resource/datasets/${file}")))

 }
}
