---
title: "From Scribbles to Gemini, with EchoFeed"
published: "2024-04-14T00:23:30.000000Z"
updated: "2024-04-14T00:23:30.000000Z"
---

I [posted *almost* a month ago](https://scribbles.jbowdre.lol/post/parking-scribbles-for-now-t9dty3yh) that I was pausing my Scribblesing while I focused on further adventures in [Geminispace](https://geminiprotocol.net/). But then [Robb Knight](https://robb.omg.lol/) went and released the much-anticipated [EchoFeed](https://echofeed.app), and I thought it might be fun to see if I could feed my [Gemini capsule](https://capsule.jbowdre.lol) from Scribbles.

After tinkering with it quite a bit today, I think I've got a working (if not particularly elegant) solution.

Now, when EchoFeed sees a new post on my Scribbles feed, it copies the post to a Markdown file in the [GitHub repo](https://github.com/jbowdre/capsule) I use for my capsule. A GitHub Actions workflow is triggered by the creation of that new Markdown file and converts it to the Gemtext format, complete with a YAML sidecar to hold metadata for [gempost](https://github.com/justlark/gempost), a static site generator for Gemini. And then the creation of *that* file triggers another workflow which uses gempost to build the site and then push it to my server.

Now I get to check out all the [cool new stuff Vincent has been adding to Scribbles](https://scribbles.page/updates) while still maintaining a presence on the altweb. Very exciting!