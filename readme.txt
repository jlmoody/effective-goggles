This is a demonstration of how to configure a Jenkins server using [Vagrant](https://www.vagrantup.com/) and [Puppet](https://puppet.com/) for provisioning.

Server Specs:

Ubuntu 16.04 LTS

Jenkins 2.121.1

#### Warning! Jenkins is running without security with this build. This build does not attempt to address all security concerns that would need to occur in a production environment.

The server OS could be changed to your personal liking in the Vagrantfile:

```
config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
```

... and the Puppet manifest would need to change to reflect installation options offered in your particular OS of choice but, these things are possible.

#### \<\-\- Do not skip reading this! \-\-\>

First, please use the latest version of [Vagrant](https://www.vagrantup.com/). At the time of this writing I am using 2.1.1. I have not tried this with older versions, it might work or it might not.

Second, I am on macOs Sierra Version 10.12.6. Therefore my instructions will be tailored towards using a terminal in a \*nix environment.

### Let's begin..

Open a terminal and navigate to where you would like a new directory to live. I personally keep all my repos and those I clone in a symlinked directory under my home directory called repos, very funny... I mean practical, I know but, I am not one to tell you how to organize your life/computer(computer life?). Ok, time for some fun stuff!

1. Clone this repo:

... [or learn about cloning repos](https://help.github.com/articles/cloning-a-repository/)

git clone https://github.com/jlmoody/effective-goggles.git

2. Change directory:

cd effective-goggles

3. Do the thing:

vagrant up

Now sit back, sip your favorite beverage and let the magic happen... oh we're done. This process takes less than a minute on my machine, hopefully on yours too.

Navigate to your new install of [Jenkins](https://jenkins.io/):

http://127.0.0.1:8080/

Note: Jenkins has been configured to run on port 8000, Vagrant is port forwarding on 8080 to avoid collisions.

Party!

In Summary:

The most difficult aspect of this build was addressing requirement (d). Typically I would not take into consideration the ideas of service interruption, system state and configuration task repetition on a Vagrant build because the tooling allows for the machine to easily be torn down and recreated though, I understand its importance here and applicability to production environments. Also I wanted to challenge myself and take this opportunity to learn more about using the Vagrant Puppet provisioner with this project because I typically use bootstrap.sh with my Vagrant builds, old habits die hard sometimes. Picking up on the control flow, dependencies and that Puppet is declarative by nature were additions to the difficulty. Overall though it was not terribly difficult and it is nice to revisit familiar tools with new challenges, digging deeper and learning new tricks is always fun.

Requirement: (d) Subsequent applications of the solution should not cause failures or repeat redundant configuration tasks

The d again, incredibly important but why?

Uptime is critical, diminished or nonexistent services are typically not billable solutions and certainly not advantageous to meeting current customer expectations, building trust and definitely does not help businesses reach critical velocity. Repeatability is the cornerstone and using tools that help avoid configuration drift is monumental to avoiding confusion and failure. All of which contribute to being successful in the modern era of infrastructure management and certainly in the future as technology surpasses unimaginable rates of change.

For this project I turned to the usual suspects for help; [Google](https://www.google.com) and [Github](https://github.com). Often which landed me on [Stackoverflow](https://stackoverflow.com/), the [Vagrant](https://www.vagrantup.com/) site or the [Puppet](https://puppet.com/) site itself.

Honestly automation means everything to me. It has been a major part of my life and career: Making things easier seems better. I personally have been involved and witnessed the struggles that come from the inability to meet the demands of change. Whether it was an unapplied security patch that is now the brunt of a worm-able virus ravaging a massive global infrastructure, with millions in revenue lost and employees left helpless. To the missed opportunities in small startups that simply could not afford the loss. Automation changes the game; ideas become relevant solutions, the small guys become competitors amongst giants and the realization of simplicity in a continually complex world wins. I am of the opinion that without automation deeply rooted not only in infrastructure design but business strategy as a whole one simply can not meet the demands of the era that so many of us have helped to usher in.

