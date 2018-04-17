## 04-16-18_walkthrough_meeting


### General Overview


Statement of work; David is our client + public cloud project starting next week -> AWS & Google

* Open Stack project for whatever David wants within reason
  * 2 months to get it done
    * Scope is within something we can execute and deliver on
* Presentation at the end, to David as the client and possibly Lisa

* Path to outside can't happen, so we have to be on-site for this project


## Project resources


* Blade server, we get four from Blade Center E
  * 2 as compute node cluster
  * open stack controller on 3rd
  * 4th iSCSI
or
* 1 as controller
* 3 in cluster
  * local storage

* Xen server using the version one before latest

* If relevant CentOS installed on the iSCSI storage target


### Specific & Relevant Info


* usb only for installs on blade

* David has folder with all manuals if we need it

* not enough storage via iSCSI?

* Possibility to migrate from local to SAN

* web conferencing - Zoom meeting while people are Host-perspective

* ssh server is possible -> lamp stack connected to dns

* partition NICs for networks you need

* switch panel behind

* ideally redundant

* Internet; local 1 - lisanet/local 2

* allows all vlans out

* reconfigure port from access to another

* mgmt to see how many are per blade 2 internal? - 24 ports external

* iSCSI target can be linux - CentOS 7

* Etherchannel limit

* Ansible & Open Stack VMs - CentOS 7

* Partition nics in the server; set those vlans on each network

* iSCSI target to point to something that's a Dell computer.


### Requirements


** We have a week to get the project requirements in **

* document all equipment and ip addresses → diagram

* architect 5 blades
  * 1 as storage
  * one of the SANs

* submit requirements on canvas & 1 person submits software requirements → iterate

* 2-3 playbooks w/openstack modules - yaml

* setup user accounts

* Ansible setup on controller

* at least 2 or 3 networks

* Internally partition accordingly to how many networks we need with vlans; each blade will have two nics which can be partitioned; figure out what you can partition; generally four-per. Four networks with a pair each for redundancy

* partition nics into 2 w/ 4 partitions each
  * 4 networks cross utilize




* multiple vlans to isolate
  * separate VLAN for storage
  * one for Xen
  * internal for servers themselves
  * Separate VLANS in different pairs. Pick a block of VLANS anything > 400 -> 407 mgmt
>    400 - mgmt
>    401 - internal
>    402 - external
>    403 - storage

>    404 - mgmt
>    405 - internal
>    406 - external
>    407 - storage  


## Big picture

The client would be faculty/students to make a request for access; essentially they provision VMs they can use via open stack

1. They get access to the controller which has a web interface (self service)
2. Controller that logs in and provisions infrastructure
3. This hits the compute nodes and carves our whatever it needs - that hardware is hooked up to a SAN

* Switch hooked up to compute nodes which is redundant -> pair to each switch.

Compute nodes & open stack controller


**Next meeting: this Saturday at 10:00am.**
