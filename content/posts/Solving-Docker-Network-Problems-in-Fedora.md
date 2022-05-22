---
title: "Solving Docker Network Problems in Fedora"
date: 2020-10-06T10:05:15-03:00
draft: false
Categories: ["Linux","Fedora","Docker","Network", "English"]
Tags: ["Linux","Fedora","Docker","Network", "Englis"]
---
After more than 12 years using [Debian](http://debian.org) as a workstation, I decided to migrate to [Fedora](https://fedoraproject.org/) a little over 6 months ago, when I changed the HD of laptop for an SSD, The first reasons for the decision to test Fedora was the native support for Luks to encrypt the disk during installation and the desire to learn a little more about RPM packages and the ecosystem from [Red Hat](https://redhat.com/).

The migration was super easy, as I always liked to use Gnome, since version 2, the interface was not a problem because both use [Gnome Shell](https://gnome.org), and dealing with SELinux and FirewallD were facilitated using [Cockpit](https://cockpit-project.org/). The only problem found was related to Docker, which for some reason, the containers and the build couldn't access the internet.

Browsing on mailing lists and forums, I noticed that, as Docker creates a new interface through which it NATs for accessing the containers, it would need to add this new interface in the "Trusted" zone in firewalld, which can be done in a simple way, with the command:

```bash
# firewall-cmd --permanent --zone=trusted --add-interface=docker0
# firewall-cmd --reload
```
When I restarted the docker service, both, build and containers internet access worked correctly.