#
#        AUTHENTICATION
#
variable "openstack_user_name" {
    description = "edit ~/secret.tfvars"
    default  = ""
}
variable "openstack_project_name" {
    description = "edit ~/secret.tfvars"
    default  = ""
}
variable "openstack_password" {
    description = "edit ~/secret.tfvars"
    default  = ""
}
variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
    default  = "https://compute.datacentred.io:5000/v3.0"
}

variable "internet-access" {
    default  = "internet-access-network"
}
#
#   Instance
#
variable "instance_name" {
    description = "PUPPET-MASTER"
    default  = "PUPPET-MASTER"
}
variable "instance_image_id" {
    description = "Ubuntu Server 16.04.2"
    default  = "73fb2fff-64bf-415f-82ec-b63bbb04b3cf"
}
variable "instance_flavor_id" {
    description = "dc1.2x4x40"
    default  = "196235bc-7ca5-4085-ac81-7e0242bda3f9"
}

#+--------------------------------------+------------+-------+------+-----------+-------+-----------+
#| ID                                   | Name       |   RAM | Disk | Ephemeral | VCPUs | Is Public |
#+--------------------------------------+------------+-------+------+-----------+-------+-----------+
#| 05a9e6d1-d29f-4e98-9eab-51c9a6beed44 | dc1.1x2.20 |  2048 |   20 |         0 |     1 | True      |
#| 196235bc-7ca5-4085-ac81-7e0242bda3f9 | dc1.2x4.40 |  4096 |   40 |         0 |     2 | True      |
#| 5e68b95a-61fe-464f-913d-df044c7e433d | dc1.4x16   | 16384 |   80 |         0 |     4 | True      |
#| 718f2a6d-52c5-4f23-a774-49df51c6eedc | dc1.1x1.80 |  1024 |   80 |         0 |     1 | True      |
#| 78d43ae0-7c98-48d2-9adc-90e8f8f6fe99 | dc1.1x0    |   512 |   10 |         0 |     1 | True      |
#| 8e6069a3-d8c6-4741-8e0d-6373b2ca38cc | dc1.1x1.20 |  1024 |   20 |         0 |     1 | True      |
#| 8f4b7ae1-b8c2-431f-bb0c-362a5ece0381 | dc1.2x4    |  4096 |   80 |         0 |     2 | True      |
#| 9cf6e43b-e191-47ca-8665-f8592e2d6227 | dc1.4x8    |  8192 |   80 |         0 |     4 | True      |
#| af2a80fe-ccad-43df-8cae-6418da948467 | dc1.8x16   | 16384 |   80 |         0 |     8 | True      |
#| b122c607-2b5b-43fd-8879-cf6cb742e102 | dc1.1x2.80 |  2048 |   80 |         0 |     1 | True      |
#| b671216b-1c68-4765-b752-0e8e6b6d015f | dc1.1x2    |  2048 |   40 |         0 |     1 | True      |
#| b8e8ab6a-5480-478c-b1de-b09050683d7d | dc1.8x32   | 32000 |   80 |         0 |     8 | True      |
#| bf6dbcab-f0a5-49d7-b427-0ee09cc5f583 | dc1.2x2    |  2048 |   80 |         0 |     2 | True      |
#| c4b193d2-f331-4250-9b15-bbfde97c462a | dc1.2x2.40 |  2048 |   40 |         0 |     2 | True      |
#| c871d2fc-c6df-41ab-8a89-6ddc5d8137d0 | dc1.16x32  | 32000 |   80 |         0 |    16 | True      |
#| d87de0ca-9c0e-4759-a704-8621883c3415 | dc1.2x8.40 |  8192 |   40 |         0 |     2 | True      |
#| dcd2be06-0940-4410-9d1f-cbdc22a847e7 | dc1.2x8    |  8192 |   80 |         0 |     2 | True      |
#| f0577618-9125-4948-b450-474e225bbc4c | dc1.1x1    |  1024 |   40 |         0 |     1 | True      |
#+--------------------------------------+------------+-------+------+-----------+-------+-----------+



#
# this key is already within openstack, to add new key use (below example is a fake key):
# default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB"
#
# or if you want to use key from file use:
#
# your existing key in openstack
variable "key_pair" {
    default  = "HOME"
}
