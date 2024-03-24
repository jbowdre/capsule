# Capsule

This repo is used to publish content to my Gemini capsule, available in [geminispace](https://geminiprotocol.net/docs/faq-section-1.gmi#:~:text=1.2%20Does%20it%20come%20with%20cool%20new%20lingo%3F) at [gemini://capsule.jbowdre.lol](gemini://capsule.jbowdre.lol) and on the web at [https://capsule.jbowdre.lol](https://capsule.jbowdre.lol).

Full implementation details are on [my blog](https://runtimeterror.dev/gemini-capsule-gempost-github-actions/), but in short:
- `agate/` holds an archive of my [Agate](https://github.com/mbrubeck/agate) Gemini server configuration,
- `kineto/` is an archive of the configuration for the [kineto](https://sr.ht/~sircmpwn/kineto/) gemini-to-http proxy,
- `static/`, `templates`, and `gempost.yaml` are used by [gempost](https://github.com/justlark/gempost) to generate the index, gemlog, and Atom feed,
- and `.github/workflows/deploy-gemini.yml` builds the site and pushes the content to my server so it can be seen.

