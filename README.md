# Base boxes

Powered by [![Packer](https://raw.githubusercontent.com/MartijnSips/vagrant-base-boxes/develop/logos/Packer.png "Packer")](http://www.packer.io).

## Overview

The scripts in this repository will create a base box to be used with vagrant

## How to recreate a base box

### Prerequisites

You need to have the following software installed. (The version within the brackets are the versions where these scripts are tested with.)

- Packer (1.7.3)
- Vagrant (2.2.14)
- Virtualbox (5.2.18)

#### Windows 10 Professional (20h2)

Before you start building and uploading your own Windows 10 Professional base box you need to adjust 2 things:
- In the Windows10Professional.json file you need to fill in your personal vagrant cloud key (use the cloud_token) if you want to upload your own version. In that case, please also rename the box.
- In the answer_files\Windows10ProfessionalN\Autounattend.xml you need to fill in your personal Windows 10 Professional Product key.

You need to have an autounattend.xml file (exactly named like that). You can configure this via the Windows System Image Manager. You can get that if you download and install the Windows ADK.

##### Building the Windows 10 Pro box

Execute the following command

```Packer.exe build Windows10ProfessionalN.json```

This will take approximately 1 hour to build.

Then it will try to upload your image.