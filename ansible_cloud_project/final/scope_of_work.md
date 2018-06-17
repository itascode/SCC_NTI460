# NTI-460 Practicum - Cloud Project

**Carlos Aguilar | Cody Gagnon | Fadil Jemal
Jonathan Wade | Ted Jensen | Yolmant Torres**

**Michael J. Fraser |
Saturday, June 16, 2018**

### Table of Contents
<!-- toc -->
- [1. - Objective](#1-objective)
- [2. - Generating the Scope](#2-generating-the-scope)
  * [2.1 - Cloud Infrastructure Diagram](##21-cloud-infrastructure-diagram)
  * [2.2 - Technical Components of the Project](#22-technical-components-of-the-project)
  * [2.3 - Working Within Constraints of Practicum](#23-working-within-constraints-of-practicum)
- [3. Delegation of Work](#3-delegation-of-work)
- [4. Connection to learning Objectives](#4-connection-to-learning-objectives)


### 1. Objective

The cloud project serves as a way for us to be able to work on code and have the hardware layer abstracted away from us. With this in mind, we need to think less about having a hardware-based objective like we did with the _On-Prem_ project and think more about the cloud as a software-based objective. The ability for us to be able to write code and immediately test results of our scripts is powerful. Since we're already doing our work in the cloud with GitHub and other version control platforms, it becomes easier to be able to collaborate and create together what may've been more difficult to do during the _On-Prem_ part of the Practicum. Thus our core focus becomes using technologies to collaborate on code and also using technologies such as Ansible to deploy said code.


### 2. Generating the Scope

We already came into this project with experience in the cloud that we've garnered from our time spent in the Linux classes at Central, so we decided that whatever we'd do it'd be best to base our work off of this experience. We met multiple times to discuss what the work objective would be for this project and how we'd be able to implement it. What we came off of using this iterative process was a project that seemed doable given our time frame. Below you will find the technical components we've created and adapted for this project as well as the reasoning for why we chose this route.

#### 2.1 Cloud Infrasctructure Diagram

<p align="center">
  <img src="https://github.com/codycodes/SCC_NTI460/raw/master/ansible_cloud_project/final/ldap_nfs_cloud_diagram.png" alt="Ansible GCE Cloud Infrastructure Diagram LDAP NFS Clients" />
</p>


#### 2.2 Technical Components of Project



* Servers
  * NFS
    * The original code which was written during the NTI-310 class that we took with Nicole can be used to create an NFS server which includes mounts to three directories. It is up to the client to choose which directories they'd like to mount. The client is given r/w access to these directories and as a result we'll be able to test the functionality of the NFS server by using commands like `showmount -e $NFS_SERVER_IP` from either the server or the client.
  * LDAP
    * We also wrote code for LDAP servers during our NTI-310 class which was actually in conjunction with our NFS code. While possible to manage LDAP via the command line, as a class we'd installed _httpd_ and _phpldapadmin_ which allows us to have the ability to manage all aspects of LDAP object creation through a web interface. For testing on the server side, we'd first need to be able to login to _phpldapadmin_ and then test creating a group and a user who's a part of the group we just created. By doing this we can then test if this client propagates to servers which are pointed to this LDAP server.

* Client(s)
  * The clients are also a part of the same component of our NTI-310 course, where we setup both an LDAP server and an NFS server and then used the clients to point to each. The testing happens mostly on the client side, where it's discovered whether or not the service is functional. We can follow up by running the `showmount -e $NFS_SERVER_IP_HERE` command from our NFS client and seeing if the resulting shares are showing up or not. This may not be as important when you're only dealing with a single network in the cloud where everything is handled for you; knowing this command for the real world is crucial when testing NFS due to the eccentricities which can occur when dealing with hardware. We can also check to see if the client is connecting to the NFS server by putting a file on said share and testing to see if it exists on the server from the server (or another client) or not. The testing of the LDAP server follows the same principles, except instead of checking for any file, we check to see if the user we created within the group we created exists. This can be accomplished using the `getent passwd | grep $YOUR_CREATED_USER_HERE` from the client, which is simple enough.
  * As a bonus from what we created in NTI-310, we want to have the ability to use Ansible to create multiple clients, and give the user the ability to choose how many. Of course we can test multiple clients the same way we can test one client, and potentially in many other ways; for the sake of our sanity, as long as the clients fulfill the above tests we'll consider our job complete.


#### 2.3 Working Within Constraints of Practicum

Our cloud project got off to a start after the second half of the quarter, which means that we need to come up with a scope that would fit within the remaining quarter's timeframe. As a team we know that it'd be best to keep to what we'd previously learned as not only a demonstration of our knowledge, but also as a safeguard to protect us for when we get stuck learning about new technologies. At its core, we are dealing with software which is infinitely iterable; if we underpromise and overdeliver, then we all know that we're doing it right. There are many ways in which we could implement more from what became accessible to us after we took these concepts away from NTI-310: we could use the combination of LDAP and NFS to give users their own shares and use the security mechanisms built into LDAP to securely give users their own storage on a network (much like what you get from logging into Seattle Central's network on your student drive). Because of our current progress with the _On-Prem_ project, we want to give ourselves a goal which aligns with our objectives, but also gives us the ability to get the thing done.


### 3. Delegation of Work

We met as a group and discussed what would work best given the constraints to generate work that aligns with our objectives. We believed that what we learned about change management from the _On-Prem_ portion of the Practicum is important and that we'd need to be able to use this idea in order to collaborate and make progress effectively. We had meetings to discuss these components, and below you'll find our delegation of these as follows:

* NFS Server
  * Ted
  * Jonathan
* LDAP server
  * Cody
  * Yolmant
* Spin up any number of client able to connect to LDAP and NFS
  * Fadil
  * Carlos

Pairing group members up this way seems like a fair way to delegate work, and also gives group members the ability to work together and help each other to ensure that the team is able to benefit as a whole.

### 4. Connection to Learning Objectives

What we take out of this course is what we take into the real world; the experience that we intend to fulfill is that which gives us more perspective for the future. Part of our learning process is learning new technologies. In this case we're using Ansible to spin up our instances. This is a natural progression from what we've learned in our prior classes, but will be no cake walk. We will need to be able to learn and work with technologies we've never used, and that always has the ability to present a challenge. We are taking not only the learning that we've done in class to do our solo work, but now building onto what we'll be doing as team work, which is part of a natural progression in our time at Seattle Central College. This project will be closer to what we'd have in terms of experience in the real world, and this is a valuable connection to have, because if we're not being prepared for the real world, then why are we learning in school?
