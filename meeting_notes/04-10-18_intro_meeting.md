## 04-10-18 Introductory Meeting Notes

## NTI-460 DevOps Practicum:

Grades - put in effort and outcome, working towards this project. Even if not delivered exactly. See intention. Drive to attempt to get there!


### TODO: now:
- [ ] Get immersed in Ansible
	* < 60 min to get Ansible up
	* Centos up and running Ansible
		* open source version - Getting Started guide
- [ ] Ansible - Understand tasks, how playbooks are constructed; variables, expressions
- [ ] Learn how to construct yaml.yml files


### Main components:
 * Open stack, Xen server, Ansible
 * SAN, networking, deploy VMs or a structure of some sort of product we want.
 * Networking, Automation, multiple networks & vlans and stuff
 * Host-perspective: Xen Sever


### Requirements:

- [ ] Status update - your own folder in the 460 & 470 git repo
	- [ ] M/W/F weekly
	- [ ] First initial, last name for folder - Sample progress report doc on GitHub -> Create your own folder inside status reports
	- [ ] merge into master. Don’t branch off and do pull requests
- [ ] statement of work ~two weeks from now
- [ ] Write playbooks, put on your own GitHub (your code works)
- [ ] Ansible server standup
- [ ] Architectural diagrams
- [ ] Meet every other week
- [ ] two more on-site meetings for Practicum
- [ ] Midterm around 2nd week of May
- [ ] Presentation


### Hardware Overview (on-prem):

* IBM Blade Center to setup private cloud - infrastructure based.
	* Two DS3300’s -> HS22’s actual servers?
		* Networking modules in the back of the blade chassis
* Build out a full farm - Students can spin up in linux or windows
	* Control, Compute, Objects


### Future/ideas:

* Ansible in the cloud
* Putting together requirements for a project
* Security component
	* Ansible Vault - another server which carries secrets. Setup stuff between Ansible & Vault
