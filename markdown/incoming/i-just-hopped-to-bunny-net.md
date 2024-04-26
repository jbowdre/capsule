---
title: "I Just Hopped to Bunny.net"
published: "2024-04-26T19:13:48.000000Z"
updated: "2024-04-26T19:13:48.000000Z"
---

Last night, a wild hare took hold of me, and I decided to leap from Cloudflare to bunny.net for my [runtimeterror.dev](https://runtimeterror.dev) blog's DNS and CDN.  
  
I've been cozy in the burrow of Cloudflare's offering for years, nibbling on their services that go beyond DNS and CDN, like [Cloudflare Tunnels for serving internal resources externally](https://runtimeterror.dev/publish-services-cloudflare-tunnel/) and [Cloudflare Workers and Crowdsec Bouncers](https://docs.crowdsec.net/u/bouncers/cloudflare-workers/) as a sort of distributed fail2ban setup. So while I thought I might burrow into Bunny on a spare domain, I didn't really intend to hop providers for the main blog.  
  
Yet bunny.net whiskered its way into my favor surprisingly quickly, and I realized I wasn't actually using many of those additional integrations on my main domain. So I hopped right into the big migration, which was as smooth as a rabbit's fur. I simply exported my DNS zone from Cloudflare, imported it to bunny.net, relocated a few file assets from Cloudflare's R2 object storage to Bunny Storage, and updated the domain's name servers with the registrar. Bunny began handling queries faster than a rabbit making a buffet of my flower beds.   
  
There was a brief moment of thumping SSL errors after I enabled CDN Accelerated DNS, but a quick hop through a Bunny doc helped me sniff out [the issue](https://support.bunny.net/hc/en-us/articles/8537885855516-CDN-Accelerated-DNS-Record-SSL-Issue-Troubleshooting) and [manually refresh the cert](https://support.bunny.net/hc/en-us/articles/208517725-How-to-set-up-SSL-for-your-custom-domain-name).  
  
Bunny.net is not just fast and affordable, but also simple to use, and brimming with customizable options and controls. Plus, it's decked out with adorable bunny characters throughout the interface. It also lets me reduce my reliance on a giant corporation which has a big paw on the internet's control (for better or worse).   
  
I might not be ready to move all of my digital warrens over as bunny.net doesn't quite cover all of my use cases yet, but it seems like a smart hop for my blog. Now I just need to keep exploring these rabbit holes to really learn how to make the most of bunny.net.

=> https://scribbles.jbowdre.lol/post/i-just-hopped-to-bunny-net 📡 Originally posted on Scribbles