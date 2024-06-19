---
title: "Trying Tabby Terminal"
published: "2024-04-19T21:14:49.000000Z"
updated: "2024-04-19T21:14:49.000000Z"
---

A [recent toot from Jack Baty](https://social.lol/@jbaty/112291598276004307) introduced me to the lovely [Berkeley Mono font](https://berkeleygraphics.com/typefaces/berkeley-mono/). One thing led to another and, well, I purchased the first font I've ever paid for (seriously, it's *that good*).

Installing the font for use in VS Code didn't take too much effort; I just dropped the relevant TTF files into `/usr/fonts/share/truetype/`and then [updated my VS Code config](https://github.com/jbowdre/dotfiles/commit/9d7db36307522c114d6e6f0ef32720b7935fb983).

Being able to use the new font in my terminal emulator posed a more difficult problem. You see, my primary computer is a Framework Chromebook, where I do most of my work in the ["Crostini" Linux development environment](https://chromeos.dev/en/linux). So I'm essentially using a Debian container inside of a hardened VM inside of ChromeOS, and there's some special plumbing to make it feel like a more native experience. It works brilliantly for my needs, but does sometimes introduce some interesting hurdles.

Like not being able to select a user-installed font in the default Terminal application (which runs as a ChromeOS web app and gets magically piped through to the container).

I decided maybe it was time to look at a different terminal emulator, and a short survey of available options led me to [Tabby](https://tabby.sh/). It's nice to look at, quick to run, packed with features and options, and (of course) makes it easy to adjust the theme with my preferred colors and fonts. As an added bonus, it's available across platforms so I can have the same terminal experience on my Linux-focused Chromebook and on my Windows systems as well. Neat!

So far, I'm really impressed with Tabby and will likely be using it at least until Mitchell Hashimoto is ready to share the [Ghostty terminal emulator](https://mitchellh.com/ghostty) he's been tinkering with.

=> https://blog.jbowdre.lol/post/trying-tabby-terminal 📡 Originally posted on jbowdre's weblog