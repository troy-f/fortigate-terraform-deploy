//AWS Configuration
variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "eu-west-1"
}

// Availability zones for the region
variable "az1" {
  default = "eu-west-1a"
}

variable "az2" {
  default = "eu-west-1b"
}

// VPC for FortiGate Security VPC
variable "vpccidr" {
  default = "10.1.0.0/16"
}

variable "publiccidraz1" {
  default = "10.1.0.0/24"
}

variable "privatecidraz1" {
  default = "10.1.1.0/24"
}


// VPC for Customer VPC
variable "csvpccidr" {
  default = "20.1.0.0/16"
}

variable "cspubliccidraz1" {
  default = "20.1.0.0/24"
}

variable "csprivatecidraz1" {
  default = "20.1.1.0/24"
}


variable "cspubliccidraz2" {
  default = "20.1.2.0/24"
}

variable "csprivatecidraz2" {
  default = "20.1.3.0/24"
}


// VPC for Customer2 VPC
variable "cs2vpccidr" {
  default = "21.1.0.0/16"
}

variable "cs2publiccidraz1" {
  default = "21.1.0.0/24"
}

variable "cs2privatecidraz1" {
  default = "21.1.1.0/24"
}


variable "cs2publiccidraz2" {
  default = "21.1.2.0/24"
}

variable "cs2privatecidraz2" {
  default = "21.1.3.0/24"
}


// License Type to create FortiGate-VM
// Provide the license type for FortiGate-VM Instances.  Can only use BYOL due to requirement of multiple VDOMs
variable "license_type" {
  default = "byol"
}

// AMIs are for FGTVM AWS(BYOL) - 7.2.0
variable "fgtvmbyolami" {
  type = map(any)
  default = {
    us-east-1      = "ami-08a9244de2d3b3cfa"
    us-east-2      = "ami-0b07d15df1781b3d8"
    us-west-1      = "ami-02dc2d7ea094493d6"
    us-west-2      = "ami-0c0dcf7b73b82c9b1"
    af-south-1     = "ami-0d74ee5597e3ef661"
    ap-east-1      = "ami-0a0c5c6454847d23a"
    ap-southeast-3 = "ami-028cc9519f272bcb6"
    ap-south-1     = "ami-085942a3a94223f47"
    ap-northeast-3 = "ami-09b93acca6bd3596c"
    ap-northeast-2 = "ami-0cf302c5443f1ebb0"
    ap-southeast-1 = "ami-0a766a36e6c0b330e"
    ap-southeast-2 = "ami-0b658e3ca1fc97423"
    ap-northeast-1 = "ami-0daa2ffa06df3702f"
    ca-central-1   = "ami-07f812bb597b8c317"
    eu-central-1   = "ami-0d049e761ea8dbffc"
    eu-west-1      = "ami-0caa0716272a43357"
    eu-west-2      = "ami-09dc1af4df14fd469"
    eu-south-1     = "ami-0767c696d9d0d5f9f"
    eu-west-3      = "ami-0820c09066de0e77e"
    eu-north-1     = "ami-06828be5bef414e7d"
    me-south-1     = "ami-054c0c3be39202670"
    sa-east-1      = "ami-07fe117d69adc5f80"
  }
}

variable "size" {
  default = "c5n.xlarge"
}

//  Existing SSH Key on the AWS 
variable "keyname" {
  default = "<SSH Key>"
}

//  Admin HTTPS access port
variable "adminsport" {
  default = "443"
}

variable "bootstrap-fgtvm" {
  // Change to your own path
  type    = string
  default = "fgtvm.conf"
}

// license file for the active fgt
variable "license" {
  // Change to your own byol license file, license.lic
  type    = string
  default = "license.lic"
}
