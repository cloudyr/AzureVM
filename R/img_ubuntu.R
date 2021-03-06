# virtual machine images ========================

#' @rdname vm_config
#' @export
ubuntu_16.04 <- function(keylogin=TRUE, managed_identity=TRUE, datadisks=numeric(0),
                        nsg=nsg_config(list(nsg_rule_allow_ssh)), ...)
{
    vm_config(image_config("Canonical", "UbuntuServer", "16.04-LTS"),
              keylogin=keylogin, managed_identity=managed_identity, datadisks=datadisks, nsg=nsg, ...)
}

#' @rdname vm_config
#' @export
ubuntu_18.04 <- function(keylogin=TRUE, managed_identity=TRUE, datadisks=numeric(0),
                        nsg=nsg_config(list(nsg_rule_allow_ssh)), ...)
{
    vm_config(image_config("Canonical", "UbuntuServer", "18.04-LTS"),
              keylogin=keylogin, managed_identity=managed_identity, datadisks=datadisks, nsg=nsg, ...)
}

#' @rdname vm_config
#' @export
ubuntu_20.04 <- function(keylogin=TRUE, managed_identity=TRUE, datadisks=numeric(0),
                         nsg=nsg_config(list(nsg_rule_allow_ssh)), ...)
{
    vm_config(image_config("Canonical", "0001-com-ubuntu-server-focal", "20_04-LTS"),
              keylogin=keylogin, managed_identity=managed_identity, datadisks=datadisks, nsg=nsg, ...)
}

#' @rdname vm_config
#' @export
ubuntu_20.04_gen2 <- function(keylogin=TRUE, managed_identity=TRUE, datadisks=numeric(0),
                              nsg=nsg_config(list(nsg_rule_allow_ssh)), ...)
{
    vm_config(image_config("Canonical", "0001-com-ubuntu-server-focal", "20_04-LTS-gen2"),
              keylogin=keylogin, managed_identity=managed_identity, datadisks=datadisks, nsg=nsg, ...)
}


# virtual machine scaleset images ===============

#' @rdname vmss_config
#' @export
ubuntu_16.04_ss <- function(datadisks=numeric(0),
                            nsg=nsg_config(list(nsg_rule_allow_ssh)),
                            load_balancer=lb_config(rules=list(lb_rule_ssh),
                                                    probes=list(lb_probe_ssh)),
                            ...)
{
    vmss_config(image_config("Canonical", "UbuntuServer", "16.04-LTS"),
                datadisks=datadisks, nsg=nsg, load_balancer=load_balancer, ...)
}

#' @rdname vmss_config
#' @export
ubuntu_18.04_ss <- function(datadisks=numeric(0),
                            nsg=nsg_config(list(nsg_rule_allow_ssh)),
                            load_balancer=lb_config(rules=list(lb_rule_ssh),
                                                    probes=list(lb_probe_ssh)),
                            ...)
{
    vmss_config(image_config("Canonical", "UbuntuServer", "18.04-LTS"),
                datadisks=datadisks, nsg=nsg, load_balancer=load_balancer, ...)
}

#' @rdname vmss_config
#' @export
ubuntu_20.04_ss <- function(datadisks=numeric(0),
                            nsg=nsg_config(list(nsg_rule_allow_ssh)),
                            load_balancer=lb_config(rules=list(lb_rule_ssh),
                                                    probes=list(lb_probe_ssh)),
                            ...)
{
    vmss_config(image_config("Canonical", "0001-com-ubuntu-server-focal", "20_04-LTS"),
                datadisks=datadisks, nsg=nsg, load_balancer=load_balancer, ...)
}


#' @rdname vmss_config
#' @export
ubuntu_20.04_gen2_ss <- function(datadisks=numeric(0),
                                nsg=nsg_config(list(nsg_rule_allow_ssh)),
                                load_balancer=lb_config(rules=list(lb_rule_ssh),
                                                        probes=list(lb_probe_ssh)),
                                ...)
{
    vmss_config(image_config("Canonical", "0001-com-ubuntu-server-focal", "20_04-LTS-gen2"),
                datadisks=datadisks, nsg=nsg, load_balancer=load_balancer, ...)
}

