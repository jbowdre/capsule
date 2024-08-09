---
title: "Is SilverBullet the Note-Keeping Silver Bullet?"
published: "2024-08-09T17:49:09.802386Z"
updated: "2024-08-09T17:49:09.802386Z"
---

I've been using [Obsidian](https://obsidian.md/) to collect and manage my notes, thoughts, and tasks for a few years now, and I've been pretty happy with that setup - for the most part. Obsidian has a lot of awesome capabilities, but can also be a bit complicated to configure and use. And trying to access and work on notes from different devices (a frequent use case of mine) can be a bit of a challenge, even with the paid Sync add-on.

A few days ago, I saw [Jack Baty posting](https://social.lol/@jbaty/112881572318814612) a bit about an alternative I'd never heard of before: [SilverBullet](https://silverbullet.md/). Like Obsidian, SilverBullet is a personal knowledge management system which lets you write notes in Markdown, create relationships between notes with tags and links, and quickly search to find *anything*. It's also extremely extensible with [community plugins ("Plugs")](https://silverbullet.md/Plugs) and [user-created scripts ("Space-Scripts")](https://silverbullet.md/Space%20Script).

Unlike that kind-of-bloated, proprietary, Electron-based app, SilverBullet is an [open-source](https://github.com/silverbulletmd/silverbullet) self-hosted offline-capable web application. You [install it](https://silverbullet.md/Install) on your local computer, another computer on your network, or in the cloud somewhere, and can then use it from anything with a semi-modern web browser. I finally found some time to play with it last night and I'm hugely impressed!

I deployed my instance in Docker alongside both a [Tailscale sidecar](https://runtimeterror.dev/tailscale-serve-docker-compose-sidecar/) and [Cloudflare Tunnel sidecar](https://runtimeterror.dev/publish-services-cloudflare-tunnel/). This setup lets me easily access/edit/manage my notes from any device I own by just pointing a browser at `https://silverbullet.tailnet-name.ts.net/`. And I can also hit it from any *other* device by using the public Cloudflare endpoint which is further protected by an email-based TOTP challenge. Either way, I don't have to worry about installing a bloated app or managing a complicated sync setup. Just log in and write.

I'm only just getting started with SilverBullet, and I have a lot to learn about all its [features and options](https://silverbullet.md/Manual) but I am loving it so far. This is way more convenient for me and my use case(s) than Obsidian ever was, and I'm eagerly moving all the content from my Obsidian Vault into my new SilverBullet [Space](https://silverbullet.md/Spaces).

I *may* even look at using the [Pub Plug](https://silverbullet.md/Plugs/Pub) to publicly host shared notes from SilverBullet like I'm doing with [Obsidian + Quartz](/publishing-my-obsidian-vault-with-quartz/) at [notes.runtimeterror.dev](https://notes.runtimeterror.dev)... we'll see.

=> https://srsbsns.lol/is-silverbullet-the-note-keeping-silver-bullet/ 📡 Originally posted on srsbsns.lol