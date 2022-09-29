packer {
    required_version = ">= 1.8.0"
    required_plugins {
        virtualbox = {
            version = ">= 0.0.1"
            source  = "github.com/hashicorp/virtualbox"
        }
    }
}