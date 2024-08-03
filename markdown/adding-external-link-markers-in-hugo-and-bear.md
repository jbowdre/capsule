---
title: "Adding External Link Markers in Hugo and Bear"
published: "2024-08-03T14:33:30.500740Z"
updated: "2024-08-03T14:33:30.500740Z"
---

I tend to drop a lot of links in my posts. Some point to other posts/pages within the same site, but many point to external sites. As a *reader*, I like to know where a link is going to take me, but as a *writer*, I'm not always great about indicating that context within the text.

I mentioned in my [inaugural "This Week" post](/this-week-2024-06-29/) that I recently discovered how to use [Hugo's link render-hook templates](https://gohugo.io/render-hooks/links/) to automatically apply a little `↗` marker to external links posted on [runtimeterror](https://runtimeterror.dev). All that took was creating `layouts/_default/_markup/render-link.html` with the following content to overwrite the default rendering:

```
{{- $u := urls.Parse .Destination -}}

  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
  {{- if $u.IsAbs }}↗{{ end -}}

{{- /* chomp trailing newline */ -}}
```

That works well with Hugo since the marker gets inserted into the HTML source code at build time. But what about here on Bear?

So I went looking for a CSS-based solution that would work here. It only took about 30 seconds of searching to find [a post from Jake Bauer](https://www.paritybit.ca/blog/styling-external-links/) with the relevant CSS bits.

All I needed was to add this block to my Bear theme CSS:

```
a[href^="http"]:where(:not([href*="srsbsns.lol/"]))::after {
    content: "↗"
}
```

That was surprisingly easy, and today I learned you can use complex/compound selectors to perform pattern matching with CSS. Neat!

=> https://srsbsns.lol/adding-external-link-markers-in-hugo-and-bear/ 📡 Originally posted on jbowdre's weblog