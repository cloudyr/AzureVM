% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/img_centos.R, R/img_debian.R, R/img_dsvm.R,
%   R/img_rhel.R, R/img_ubuntu.R, R/img_windows.R, R/vm_config.R
\name{centos_7.5}
\alias{centos_7.5}
\alias{centos_7.6}
\alias{centos_8.1}
\alias{debian_8_backports}
\alias{debian_9_backports}
\alias{debian_10_backports}
\alias{debian_10_backports_gen2}
\alias{ubuntu_dsvm}
\alias{ubuntu_dsvm_gen2}
\alias{windows_dsvm}
\alias{rhel_7.6}
\alias{rhel_8}
\alias{rhel_8.1}
\alias{rhel_8.1_gen2}
\alias{rhel_8.2}
\alias{rhel_8.2_gen2}
\alias{ubuntu_16.04}
\alias{ubuntu_18.04}
\alias{ubuntu_20.04}
\alias{ubuntu_20.04_gen2}
\alias{windows_2016}
\alias{windows_2019}
\alias{windows_2019_gen2}
\alias{vm_config}
\title{VM configuration functions}
\usage{
centos_7.5(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

centos_7.6(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

centos_8.1(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

debian_8_backports(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

debian_9_backports(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

debian_10_backports(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

debian_10_backports_gen2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

ubuntu_dsvm(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh,
  nsg_rule_allow_jupyter, nsg_rule_allow_rstudio)), ...)

ubuntu_dsvm_gen2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh,
  nsg_rule_allow_jupyter, nsg_rule_allow_rstudio)), ...)

windows_dsvm(keylogin = FALSE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_rdp)), ...)

rhel_7.6(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

rhel_8(keylogin = TRUE, managed_identity = TRUE, datadisks = numeric(0),
  nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

rhel_8.1(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

rhel_8.1_gen2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

rhel_8.2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

rhel_8.2_gen2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

ubuntu_16.04(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

ubuntu_18.04(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

ubuntu_20.04(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

ubuntu_20.04_gen2(keylogin = TRUE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_ssh)), ...)

windows_2016(keylogin = FALSE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_rdp)), ...)

windows_2019(keylogin = FALSE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_rdp)), ...)

windows_2019_gen2(keylogin = FALSE, managed_identity = TRUE,
  datadisks = numeric(0), nsg = nsg_config(list(nsg_rule_allow_rdp)), ...)

vm_config(image, keylogin, managed_identity = TRUE,
  os_disk_type = c("Premium_LRS", "StandardSSD_LRS", "Standard_LRS"),
  datadisks = numeric(0), nsg = nsg_config(), ip = ip_config(),
  vnet = vnet_config(), nic = nic_config(), other_resources = list(),
  variables = list(), ...)
}
\arguments{
\item{keylogin}{Whether to use an SSH public key to login (TRUE) or a password (FALSE). Note that Windows does not support SSH key logins.}

\item{managed_identity}{Whether to provide a managed system identity for the VM.}

\item{datadisks}{The data disks to attach to the VM. Specify this as either a vector of numeric disk sizes in GB, or a list of \code{datadisk_config} objects for more control over the specification.}

\item{nsg}{The network security group for the VM. Can be a call to \code{nsg_config} to create a new NSG; an AzureRMR resource object or resource ID to reuse an existing NSG; or NULL to not use an NSG (not recommended).}

\item{...}{For the specific VM configurations, other customisation arguments to be passed to \code{vm_config}. For \code{vm_config}, named arguments that will be folded into the VM resource definition in the template. In particular use \verb{properties=list(*)} to set additional properties for the VM, beyond those set by the various configuration functions.}

\item{image}{For \code{vm_config}, the VM image to deploy. This should be an object of class \code{image_config}, created by the function of the same name.}

\item{os_disk_type}{The type of primary disk for the VM. Can be "Premium_LRS" (the default), "StandardSSD_LRS", or "Standard_LRS". Of these, "Standard_LRS" uses hard disks and the others use SSDs as the underlying hardware. Change this to "StandardSSD_LRS" or "Standard_LRS" if the VM size doesn't support premium storage.}

\item{ip}{The public IP address for the VM. Can be a call to \code{ip_config} to create a new IP address; an AzureRMR resource object or resource ID to reuse an existing address resource; or NULL if the VM should not be accessible from outside its subnet.}

\item{vnet}{The virtual network for the VM. Can be a call to \code{vnet_config} to create a new virtual network, or an AzureRMR resource object or resource ID to reuse an existing virtual network. Note that by default, AzureVM will associate the NSG with the virtual network/subnet, not with the VM's network interface.}

\item{nic}{The network interface for the VM. Can be a call to \code{nic_config} to create a new interface, or an AzureRMR resource object or resource ID to reuse an existing interface.}

\item{other_resources}{An optional list of other resources to include in the deployment.}

\item{variables}{An optional named list of variables to add to the template.}
}
\value{
An object of S3 class \code{vm_config}, that can be used by the \code{create_vm} method.
}
\description{
VM configuration functions
}
\details{
These functions are for specifying the details of a new virtual machine deployment: the VM image and related options, along with the Azure resources that the VM may need. These include the datadisks, network security group, public IP address (if the VM is to be accessible from outside its subnet), virtual network, and network interface. \code{vm_config} is the base configuration function, and the others call it to create VMs with specific operating systems and other image details.
\itemize{
\item \code{ubuntu_dsvm}: Data Science Virtual Machine, based on Ubuntu 18.04
\item \code{windows_dsvm}: Data Science Virtual Machine, based on Windows Server 2019
\item \code{ubuntu_16.04}, \code{ubuntu_18.04}, \code{ubuntu_20.04}, \code{ubuntu_20.04_gen2}: Ubuntu LTS
\item \code{windows_2016}, \code{windows_2019}: Windows Server Datacenter edition
\item \code{rhel_7.6}, \code{rhel_8}, \code{rhel_8.1}, \code{rhel_8.1_gen2}, \code{rhel_8.2}, ``rhel_8.2_gen2: Red Hat Enterprise Linux
\item \code{centos_7.5}, \code{centos_7.6}, \code{centos_8.1}: CentOS
\item \code{debian_8_backports}, \code{debian_9_backports}, \code{debian_10_backports}, \code{debian_10_backports_gen2}: Debian with backports
}

The VM configurations with \code{gen2} in the name are \href{https://docs.microsoft.com/en-us/azure/virtual-machines/windows/generation-2}{generation 2 VMs}, which feature several technical improvements over the earlier generation 1. Consider using these for greater efficiency, however note that gen2 VMs are only available for select images and do not support all possible VM sizes.

Each resource can be specified in a number of ways:
\itemize{
\item To \emph{create} a new resource as part of the deployment, call the corresponding \verb{*_config} function.
\item To use an \emph{existing} resource, supply either an \code{AzureRMR::az_resource} object (recommended) or a string containing the resource ID.
\item If the resource is not needed, specify it as NULL.
\item For the \code{other_resources} argument, supply a list of resources, each of which should be a list of resource fields (name, type, properties, sku, etc).
}

A VM configuration defines the following template variables by default, depending on its resources. If a particular resource is created, the corresponding \verb{*Name}, \verb{*Id} and \verb{*Ref} variables will be available. If a resource is referred to but not created, the \verb{*Name*} and \verb{*Id} variables will be available. Other variables can be defined via the \code{variables} argument.

\tabular{lll}{
\strong{Variable name} \tab \strong{Contents} \tab \strong{Description} \cr
\code{location} \tab \verb{[resourceGroup().location]} \tab Region to deploy resources \cr
\code{vmId} \tab \verb{[resourceId('Microsoft.Compute/virtualMachines', parameters('vmName'))]} \tab VM resource ID \cr
\code{vmRef} \tab \verb{[concat('Microsoft.Compute/virtualMachines/', parameters('vmName'))]} \tab VM template reference \cr
\code{nsgName} \tab \verb{[concat(parameters('vmName'), '-nsg')]} \tab Network security group resource name \cr
\code{nsgId} \tab \verb{[resourceId('Microsoft.Network/networkSecurityGroups', variables('nsgName'))]} \tab NSG resource ID \cr
\code{nsgRef} \tab \verb{[concat('Microsoft.Network/networkSecurityGroups/', variables('nsgName'))]} \tab NSG template reference \cr
\code{ipName} \tab \verb{[concat(parameters('vmName'), '-ip')]} \tab Public IP address resource name \cr
\code{ipId} \tab \verb{[resourceId('Microsoft.Network/publicIPAddresses', variables('ipName'))]} \tab IP resource ID \cr
\code{ipRef} \tab \verb{[concat('Microsoft.Network/publicIPAddresses/', variables('ipName'))]} \tab IP template reference \cr
\code{vnetName} \tab \verb{[concat(parameters('vmName'), '-vnet')]} \tab Virtual network resource name \cr
\code{vnetId} \tab \verb{[resourceId('Microsoft.Network/virtualNetworks', variables('vnetName'))]} \tab Vnet resource ID \cr
\code{vnetRef} \tab \verb{[concat('Microsoft.Network/virtualNetworks/', variables('vnetName'))]} \tab Vnet template reference \cr
\code{subnet} \tab \code{subnet} \tab Subnet name. Only defined if a Vnet was created or supplied as an \code{az_resource} object. \cr
\code{subnetId} \tab \verb{[concat(variables('vnetId'), '/subnets/', variables('subnet'))]} \tab Subnet resource ID. Only defined if a Vnet was created or supplied as an \code{az_resource} object. \cr
\code{nicName} \tab \verb{[concat(parameters('vmName'), '-nic')]} \tab Network interface resource name \cr
\code{nicId} \tab \verb{[resourceId('Microsoft.Network/networkInterfaces', variables('nicName'))]} \tab NIC resource ID \cr
\code{nicRef} \tab \verb{[concat('Microsoft.Network/networkInterfaces/', variables('nicName'))]} \tab NIC template reference
}

Thus, for example, if you are creating a VM named "myvm" along with all its associated resources, the NSG is named "myvm-nsg", the public IP address is "myvm-ip", the virtual network is "myvm-vnet", and the network interface is "myvm-nic".
}
\examples{

# basic Linux (Ubuntu) and Windows configs
ubuntu_18.04()
windows_2019()

# Windows DSVM with 500GB data disk, no public IP address
windows_dsvm(datadisks=500, ip=NULL)

# RHEL VM exposing ports 80 (HTTP) and 443 (HTTPS)
rhel_8(nsg=nsg_config(nsg_rule_allow_http, nsg_rule_allow_https))

# exposing no ports externally, spot (low) priority
rhel_8(nsg=nsg_config(list()), properties=list(priority="spot"))

# deploying an extra resource: storage account
ubuntu_18.04(
    variables=list(storName="[concat(parameters('vmName'), 'stor')]"),
    other_resources=list(
        list(
            type="Microsoft.Storage/storageAccounts",
            name="[variables('storName')]",
            apiVersion="2018-07-01",
            location="[variables('location')]",
            properties=list(supportsHttpsTrafficOnly=TRUE),
            sku=list(name="Standard_LRS"),
            kind="Storage"
        )
    )
)

## custom VM configuration: Windows 10 Pro 1903 with data disks
## this assumes you have a valid Win10 desktop license
user <- user_config("myname", password="Use-strong-passwords!")
image <- image_config(
     publisher="MicrosoftWindowsDesktop",
     offer="Windows-10",
     sku="19h1-pro"
)
datadisks <- list(
    datadisk_config(250, type="Premium_LRS"),
    datadisk_config(1000, type="Standard_LRS")
)
nsg <- nsg_config(
    list(nsg_rule_allow_rdp)
)
vm_config(
    image=image,
    keylogin=FALSE,
    datadisks=datadisks,
    nsg=nsg,
    properties=list(licenseType="Windows_Client")
)


\dontrun{

# reusing existing resources: placing multiple VMs in one vnet/subnet
rg <- AzureRMR::get_azure_login()$
    get_subscription("sub_id")$
    get_resource_group("rgname")

vnet <- rg$get_resource(type="Microsoft.Network/virtualNetworks", name="myvnet")

# by default, the NSG is associated with the subnet, so we don't need a new NSG either
vmconfig1 <- ubuntu_18.04(vnet=vnet, nsg=NULL)
vmconfig2 <- debian_9_backports(vnet=vnet, nsg=NULL)
vmconfig3 <- windows_2019(vnet=vnet, nsg=NULL)

}
}
\seealso{
\link{image_config}, \link{user_config}, \link{datadisk_config} for options relating to the VM resource itself

\link{nsg_config}, \link{ip_config}, \link{vnet_config}, \link{nic_config} for other resource configs

\link{build_template} for template builder methods

\link{vmss_config} for configuring a virtual machine scaleset

\link{create_vm}
}
