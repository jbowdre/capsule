---
title: "The end of something, and the start of something else"
published: "2024-09-15T01:28:42.263992Z"
updated: "2024-09-15T01:28:42.263992Z"
---

Yesterday I turned in my (employee) badge and <del>gun</del> work iPhone and [left the office I've occupied for nearly six years](https://social.lol/@jbowdre/113132004724346487) for the last time.

Working IT at the corporate level of a large conglomerate was certainly interesting. The sheer scale of the environment I helped to manage was staggering - thousands of virtual machines running on hundreds of hypervisor hosts at scores of sites around the globe. The corporation grew through acquisition so there was a constant influx of new businesses and sites, each bringing their own semi-unique technical debt to add to the corporation's. Wrangling that felt like such an uphill battle at times.

That scale also gave me a lot of opportunities to grow and explore new skill trees. I joined the company in a Windows server + virtualization administrator kind of role, but was soon tasked with the implementation of VMware vRealize Automation (now "Broadcom VMware Aria vRealize vAutomation", or something) to streamline and automate the process of deploying new virtual servers. I had a lot of fun building that out, and wrote [a number of blog posts](https://runtimeterror.dev/tags/vra) about the things I learned along the way.

From there I shifted to a more DevOps-y role with an emphasis on automation, containerization, infrastructure-as-code, and other such modern approaches to help reduce toil. Some of my highlights:

- I used [Packer](https://www.packer.io/) to build hardened virtual machine templates and [created a CI/CD pipeline](https://runtimeterror.dev/automate-packer-builds-github-actions/) to automagically create freshly-updated templates every week.
- I built a solution to sync those templates out to the remote datacenters and smaller sites so they would be ready for consumption when needed.
- I learned how to use [SaltStack](https://docs.saltproject.io/en/master/topics/tutorials/walkthrough.html) for configuration management of Linux servers, and I created a *ton* of Salt content for maintaining a complex development environment.
- I learned about using [Terraform](https://developer.hashicorp.com/terraform) for deploying and managing resources, and used that knowledge for managing an on-premise [Vault Enterprise](https://developer.hashicorp.com/vault) cluster.
- I wrote a Go app to streamline [connecting Okta organizations with the Org2Org integration](https://developer.okta.com/docs/guides/secure-oauth-between-orgs/main/); a process which took hours to do when I first inherited the task took just minutes when I was done with it. (Oh, and I learned (and continue to learn) Go.)
- I worked with development teams to containerize their firmware build tools which required very specific (no-longer-supported) Linux versions, and integrated those container images with their build pipelines to improve the performance, reliability, and security of the builds.

I also made time to mentor some other admins and help them grow their skills. It was really rewarding to see them able to pick up and run with the things I shared with them, and I know they will continue to do great things.

I can confidently (and proudly) say that I left the company much better than I found it, which is pretty cool.

There were plenty of challenges and frustrations along the way, and the support scope often made it difficult to focus on the big-picture improvements I was working toward, but overall, this was a pretty good job in my book. I'm immensely grateful for the freedom and support my immediate management provided for me to explore new ideas and try new ways of enhancing efficiency across a a global enterprise.

That all being said, I'm super-excited to start [my new job](/i-got-a-new-job/) as a platform architect at a *much* smaller corporation on Monday. I'll be able to focus on building cool stuff to help ease development and operations headaches without being tasked with operations tasks of my own. I love solving problems and building solutions, and honestly this role sounds pretty much perfect for me. I can't wait to get started!

=> https://srsbsns.lol/the-end-of-something-and-the-start-of-something-else/ 📡 Originally posted on srsbsns.lol