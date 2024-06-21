---
title: "Tracking Bear upvotes from my Cabin"
published: "2024-06-21T04:08:43.542298Z"
updated: "2024-06-21T04:08:43.542298Z"
---

Thanks to [@mbjones](https://social.lol/@mbjones) helpful post on [sending Bear upvotes to Umami](https://wand3r.net/creating-an-upvote-button-in-umami/), I was able to fumble through implementing the same behavior on my site with [Cabin](https://withcabin.com/)'s [event tracking](https://docs.withcabin.com/events.html).

Brandon's approach was to use this script added to the site's footer directives to add an event attribute to the upvote button:

```
script>
        window.onload = function() {
            // Get the button element by its class name
            var button = document.getElementsByClassName('upvote-button')[0];

            // Set a new attribute, for example, 'disabled'
            button.setAttribute('data-umami-event', " {{ post_title }}");
        };
script>
```

That *did* successfully set the attribute on my site, but clicks weren't showing up in the Cabin dashboard for some reason. So I switched tactics and opted to use the `cabin.event()` function instead:

```
script>
  window.onload = function() {
    var button = document.querySelector('.upvote-button');
    if (button) {
      button.addEventListener('click', function(event) {
        cabin.event("upvote {{ post_title }}");
      });
    }
  };
script>
```

And that did the trick!

![Analytics screenshot showing upvote events being tracked for a few blog posts.](https://bear-images.sfo2.cdn.digitaloceanspaces.com/jbowdre-1718942666.png)

Neat! Now that I have this knowledge I should be able to set up something similar on my other sites as well.

Big thanks to Brandon for getting me pointed in the right direction!

=> https://blog.jbowdre.lol/tracking-bear-upvotes-from-my-cabin/ 📡 Originally posted on jbowdre's weblog