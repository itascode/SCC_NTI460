# Seattle Central College - NTI 460 DevOps Project

## NTI460-SCC-Proj-Proposal
Class Repo for the NTI460 SCC DevOps Proj Proposal

## Client Proposal and Requirements


Carlos Aguilar |
Cody Gagnon |
Fadil Jemal |
Ted Jensen |
Yolman Torres |
Jonathan Wade


Michael J. Fraser |
April 23, 2018

<!-- toc -->
- [1. Objective](#1-objective)
- [2. DevOps Overview](#2-devops-overview)
  * [2.1.What is DevOps](#21what-is-devops)
  * [2.2.DevOps Goals](#22devops-goals)
  * [2.3.DevOps Benefits](#23devops-benefits)
  * [2.4.DevOps Practices](#24devops-practices)
  * [2.5.DevOps Tools](#25devops-tools)
  * [2.6 Software Requirements](#26-software-requirements)
- [3. DevOps Implementation](#3-devops-implementation)
  * [3.1 Understanding our current situation](#31-understanding-our-current-situation)
  * [3.2 Finalizing the DevOps objectives](#32-finalizing-the-devops-objectives)
  * [3.3 Documentation of existing processes](#33-documentation-of-existing-processes)
  * [3.4 Ideal end-state](#34-ideal-end-state)
- [4.0 Implementation of DevOps objectives](#40-implementation-of-devops-objectives)
- [5.0 Project Hardware Resources](#50-project-hardware-resources)
- [6.0 Network Resources](#60-network-resources)
- [Infrastructure Diagram](#infrastructure-diagram)
  

## 1. Objective

The objective of the document is to describe the NTI460 Team strategy for implementing and improving the DevOps practices and tools used across the various Development and Operations related processes defined by the client. The areas that are suitable for automation are identified and possible solutions for each area are described. This is subject to change based on discussions with the client.


## 2. DevOps Overview

### 2.1.What is DevOps

DevOps can be defined as a culture or process or practice within an organization that increases the communication, collaboration and integration of the Development (which includes the QA team) and the Operations (IT Operations) teams. The aim is to automate and speed up the software delivery process defined by the client much more efficiently, frequently, and reliably.

Even though ‘Continuous Delivery’ is another term that is used in conjunction with DevOps, there are some differences. The following diagram (Pic courtesy: collab.net) shows the relations:

<p align="center">
  <img src="http://i.imgur.com/CXKuq.png" alt="DevOps Venn Diagram" />
</p>

Figure 1: A Venn diagram way to understand DevOps


<p align="center">
  <img src="http://techtowntraining.com/sites/default/files/inline-images/solution-s-curve.png" alt="DevOps vs. Continuous Delivery" />
</p>

Figure 2: DevOps vs Continuous Delivery


### 2.2.DevOps Goals

The goals of DevOps are to make improvements across all components in the product and service delivery. They include:

* Improved deployment frequency
* Faster time to market
* Lower failure rates of new releases
* Faster recovery time from crashes or failures


### 2.3.DevOps Benefits

Companies that practice DevOps have reported significant benefits. Some of them are:

* Significantly shorter time-to-market
* Improved customer satisfaction
* Better product quality
* More reliable releases
* Improved productivity and efficiency
* The increased ability to build the right product by fast experimentation


### 2.4.DevOps Practices

DevOps is more than just a set of practices. There are many that are used in the industry. The following section will list the top and commonly used practice in a DevOps process in an IT organization.

**i.	Start small.**

Trying to do too much at once is a recipe for disaster. It is better to start small projects and gain confidence of team. Start project that has a high success probability. This could be a pilot or prototype or proof of concept project.

**ii.	Concentrate on the process and not on the tools.**

It is better to be tool independent and a good process should have the ability to replace one tool with another without too much disruption.

**iii.	Put everything under version control.**

To reliably deploy an application on to production, all the items that are required for building the application: code, test cases, design documents, external libraries, databases and anything that could be updated, has to be put under version control.

**iv.	Maintain a production-equivalent staging environment**

Typically a development environment is different from production. So, to avoid issues that are found only after going into production, like performance, access related and such, it is advised to have a staging environment where all those issues can be found before production.

**v.	Frequent deployment to production**

To make any new feature, bug fixes, security patches to the customer ASAP, it is suggested to deploy code frequently. It could be once for each sprint cycle in an Agile development setup, or once every duration as fixed by the DevOps team (part of Release Management).

**vi.	Automate build of app environment**

For a simple application, this is not much of a concern. But for most complex applications, setting up the running environment, such as setting up load balancers, databases, web servers, network interconnectivity and all things operation-oriented can be an unnecessary hassle. Automation is the way to go here, as it significantly cuts setup times, and reduces a large number of opportunities for human error. Infrastructure as a Service (IAAS) is used for this purpose.

**vii. Automate deployment of application**

In addition to above environment build automation, it is also very beneficial to have automation to deploy the application to the environment. This includes initializing the databases, initial setup of application, installation of dependencies and others. The automated build and deployment can be achieved through ‘Infrastructure as a code’ methodology.


### 2.5.DevOps Tools

Since DevOps is more of a process, there is not a single tool that helps in deploying DevOps practice in an organization. It is more of a ‘toolchain’, a suite of tools that helps in the implementation of a chosen DevOps practice. DevOps implementation doesn’t mean to throw away existing tools in favor of new ones. It involves in integrating the existing tools and migrating the non-compliant tools to fit the chosen practice/process.

The process steps you need to consider for tools support are:

* Source Control
* Agile Planning
* Test Case Management
* Build Automation
* Continuous Deployment
* Release Management
* Automated Test Scripts and Load Testing
* Feedback Management
* Team Collaboration
* Lab Management


### 2.6 Software Requirements

**Ansible**

Ansible provides an IT management engine that makes applications and systems easier to deploy. Or in its own words, “Ansible makes deploying software fun again.” Ansible takes this claim seriously. Unlike most configuration management platforms, Ansible uses what is called “agentless architecture.” In most cases, nodes must have a locally installed daemon that communicates with a controlling machine. Ansible, on the other hand, doesn’t require a custom agent or software to install, but simply communicates over SSH.

Ansible is easily extensible and can deploy to virtualization environments and public and private cloud environments including VMware, OpenStack, AWS, Eucalyptus Cloud, KVM, and CloudStack. The platform also can deploy big data, storage and analytics environments including Hadoop, Riak, and Aerospike.

**YAML Playbooks**

Playbooks are expressed in YAML format and have a minimum of syntax, which intentionally tries to not be a programming language or script, but rather a model of a configuration or a process. Each playbook is composed of one or more ‘plays’ in a list. The YAML playbooks will be used to automate the install of OpenStack to the Controller and Compute Nodes. 2-3 playbooks with OpenStack modules.

**CentOS 7 Linux Distribution**

The CentOS Project is a community-driven free software effort focused on delivering a robust open source ecosystem. For users, CentOS offers a consistent manageable platform that suits a wide variety of deployments. For open source communities, they offer a solid, predictable base to build upon, along with extensive resources to build, test, release, and maintain their code.

CentOS is an open source Linux OS based on Red Hat Enterprise Linux.

**Openstack**

OpenStack software controls large pools of compute, storage, and networking resources throughout a datacenter, managed through a web based dashboard or via the OpenStack API. OpenStack works with popular enterprise and open source technologies making it ideal for diverse infrastructure.

**XenServer**

Citrix XenServer is a leading virtualization management platform optimized for application, desktop and server virtualization infrastructures. Consolidation and containment of workloads on XenServer enables organizations of any size to transform their business IT compute infrastructures.


## 3. DevOps Implementation

Implementing a good DevOps process will benefit any organization to a great extent. This includes planning, developing, integration, and automation. There are a few product areas that can immediately benefit from some integration and automation tasks that will reduce the manual work involved, increase the responsiveness of support team, and also optimize the resources used. A typical DevOps implementation will integrate and automate the different process with tools appropriate to the client.

The NTI460 Team will engage the client and listed below are the steps the Team will take to achieve the client’s goals and deliver the end-product.

* Finalize with the client the objectives for the DevOps implementation
* Document existing processes and systems
* Create a baseline measurement of the current configuration and capability
* Document ideal end-state for teams
* Generate and present a roadmap to implement the DevOps process using relevant platforms, software, and tools
* Deliver the product within the scope of the project on-time and present to the client


### 3.1 Understanding our current situation

The NTI460 Team will engage in conversation with the client and assess the current capabilities and the tools used, including hardware and software. This will be achieved through walkthroughs and Q&A sessions with the client as needed.


### 3.2 Finalizing the DevOps objectives

The team with the help of the client will finalize the DevOps objectives of the implementation and also an appropriate timeline for achieving those objectives.


### 3.3 Documentation of existing processes

The current processes, tools, and systems used by the client will be documented and used to plan and implement the DevOps objectives.


### 3.4 Ideal end-state

After all the analyses are completed and processed, the ideal end-state from a DevOps standpoint will be documented and presented. This will include the process and tools that will fit the client requirement. Some of the process will be: Code review process; Versioning best practice; Infrastructure recommendation to use of private cloud; and so on.

The ideal end-state consists of the following after initial consultation with the client:

<p align="center">
  <img src="https://lh3.googleusercontent.com/-9H_KSW620Ek/Wt1cHAeib9I/AAAAAAAAAKI/_F8W1qqihnEcTc1d4-lUAb6KSsJ28i9ogCJoC/w1060-h732-n/Ideal_End_State.png" alt="DevOps Process Ideal End-State" />
</p>
Figure 3: DevOps Process Ideal End-State


## 4.0 Implementation of DevOps objectives

1. Establishing code and software to build controller server, node cluster, and storage

2. Doing the build

3. Deployment of networking requirements

4. Deploying the software to IBM Blade servers

5. Testing by the team (manual part, if not fully automated)

6. Monitoring of the servers

7. Automation of all tasks possible

8. Final tests and presentation of deliverables


## 5.0 Project Hardware Resources

5-6 Dell Workstations with Dual NIC Cards

* 1 as controller
* 3 in compute node cluster
* 1 iSCSI storage node
* (Possible) PXE Server

SSH Server – LAMP Stack with DNS connection

Cisco Catalyst 2960s 48 Port Switch with Patch Panel


## 6.0 Network Resources

500-503 Range VLANs on Catalyst Switch with EtherChannel

* Management
* Internal
* External
* Storage

Partition NICs on the Dell workstations; NICs set to VLANs on each network

* 4 Logical Partitions on NICs

Redundant links for high availability


## Infrastructure Diagram

<p align="center">
  <img src="https://lh3.googleusercontent.com/-tf0r8mQLSnk/Wt1hq_jnSeI/AAAAAAAAALI/lWOSP4zicpcZaxVeGIJ4SnwLlsePttC_gCJoC/w1060-h868-n/SCC_Proj_Infrastructure.png" alt="SCC DevOps Infrastructure Diagram" />
</p>

Figure 4: SCC DevOps Infrastructure Diagram
