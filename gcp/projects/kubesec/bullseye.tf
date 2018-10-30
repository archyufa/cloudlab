locals {
  /* GCE settings */
  # turn the VMs on or off
  online = true

  lab_cidr = "10.13.37.0/29"
}

module "network" {
  source = "../../../terraform/modules/gcp-vpc"
  name   = "lab"

  vm_cidr = "${local.lab_cidr}"
}

module "cos-vm" {
  source = "../../../terraform/modules/gce-cos-vm"
  name   = "cloudlab-cos"

  image_config = {
    family  = "cos-beta"
    project = "cos-cloud"
  }

  instance_config = {
    online       = "${local.online}"
    cloud_init   = "${file("../../../cloud-init/cloudlab")}"
    machine_type = "n1-standard-1"
    ssd_size     = "10"
    subnet       = "${module.network.subnet}"
    preemptible  = false
  }
}
