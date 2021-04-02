resource "oci_identity_compartment" "mvanvogelpoel" {
    provider = oci
    compartment_id = var.parent_compartment_id
    description = "MVO Compartment"
    name = "m.van.vogelpoel"
    freeform_tags = var.freeform_tags
}

data "oci_identity_compartment" "mvanvogelpoel" {
    id = var.parent_compartment_id
}


data "oci_identity_compartments" "sandboxes" {
    compartment_id = var.parent_compartment_id
    filter { 
             name = "name"
             values = ["mvanvogelpoel"]
        }
}

output "mvanvogelpoel" {
    value = oci_identity_compartment.mvanvogelpoel.id
}


