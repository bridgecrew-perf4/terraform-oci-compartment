# Compartment
variable parent_compartment_id {}

variable "freeform_tags" {
  type = map
  default = {
    POC = true
    Created_By = "Marcel van Vogelpoel!"
  }
}