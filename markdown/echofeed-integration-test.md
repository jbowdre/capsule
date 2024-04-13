---
title: "Echofeed Integration Test"
published: "2024-04-13T22:11:06.000000Z"
updated: "2024-04-13T22:11:06.000000Z"
---

This is a quick post to see if this [absolute nonsense](https://github.com/jbowdre/capsule/blob/main/.github/workflows/markdown2gempost.yml) I have cobbled together actually works.

If it works:

- [EchoFeed](https://echofeed.app/) will see this post in my Scribbles RSS feed, and relay it to my GitHub repo as a Markdown file.
- My new GitHub Actions workflow will see the new Markdown file, use a script and [md2gmi](https://github.com/n0x1m/md2gmi) in a Docker container to convert the Markdown to Gemtext along with a YAML metadata sidecar for gempost, and store the results in the repo.
- The existing workflow will see the new gemtext post and use [gempost](https://github.com/justlark/gempost) to (re)build the site, and then deploy it to my virtual server where it will be made available within Geminispace.

I really hope this works.