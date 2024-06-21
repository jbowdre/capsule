---
title: "Tracking Bear upvotes from my Cabin"
published: "2024-06-21T04:08:43.542298Z"
updated: "2024-06-21T04:08:43.542298Z"
---

Thanks to [@mbjones](https://social.lol/@mbjones) helpful post on [sending Bear upvotes to Umami](https://wand3r.net/creating-an-upvote-button-in-umami/), I was able to fumble through implementing the same behavior on my site with [Cabin](https://withcabin.com/)'s [event tracking](https://docs.withcabin.com/events.html).

Brandon's approach was to use this script added to the site's footer directives to add an event attribute to the upvote button:

<div class="highlight">```
<span></span><span class="p"><</span><span class="nt">script</span><span class="p">></span>
<span class="w">        </span><span class="nb">window</span><span class="p">.</span><span class="nx">onload</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kd">function</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<span class="w">            </span><span class="c1">// Get the button element by its class name</span>
<span class="w">            </span><span class="kd">var</span><span class="w"> </span><span class="nx">button</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nb">document</span><span class="p">.</span><span class="nx">getElementsByClassName</span><span class="p">(</span><span class="s1">'upvote-button'</span><span class="p">)[</span><span class="mf">0</span><span class="p">];</span>
<span class="w">            </span>
<span class="w">            </span><span class="c1">// Set a new attribute, for example, 'disabled'</span>
<span class="w">            </span><span class="nx">button</span><span class="p">.</span><span class="nx">setAttribute</span><span class="p">(</span><span class="s1">'data-umami-event'</span><span class="p">,</span><span class="w"> </span><span class="s2">"<event-name> {{ post_title }}"</span><span class="p">);</span>
<span class="w">        </span><span class="p">};</span>
<span class="p"></</span><span class="nt">script</span><span class="p">></span>
```

</div>That *did* successfully set the attribute on my site, but clicks weren't showing up in the Cabin dashboard for some reason. So I switched tactics and opted to use the `cabin.event()` function instead:

<div class="highlight">```
<span></span><span class="p"><</span><span class="nt">script</span><span class="p">></span>
<span class="w">  </span><span class="nb">window</span><span class="p">.</span><span class="nx">onload</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kd">function</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="kd">var</span><span class="w"> </span><span class="nx">button</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nb">document</span><span class="p">.</span><span class="nx">querySelector</span><span class="p">(</span><span class="s1">'.upvote-button'</span><span class="p">);</span>
<span class="w">    </span><span class="k">if</span><span class="w"> </span><span class="p">(</span><span class="nx">button</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="nx">button</span><span class="p">.</span><span class="nx">addEventListener</span><span class="p">(</span><span class="s1">'click'</span><span class="p">,</span><span class="w"> </span><span class="kd">function</span><span class="p">(</span><span class="nx">event</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">        </span><span class="nx">cabin</span><span class="p">.</span><span class="nx">event</span><span class="p">(</span><span class="s2">"upvote {{ post_title }}"</span><span class="p">);</span>
<span class="w">      </span><span class="p">});</span>
<span class="w">    </span><span class="p">}</span>
<span class="w">  </span><span class="p">};</span>
<span class="p"></</span><span class="nt">script</span><span class="p">></span>
```

</div>And that did the trick!

![Analytics screenshot showing upvote events being tracked for a few blog posts.](https://bear-images.sfo2.cdn.digitaloceanspaces.com/jbowdre-1718942666.png)

Neat! Now that I have this knowledge I should be able to set up something similar on my other sites as well.

Big thanks to Brandon for getting me pointed in the right direction!

=> https://blog.jbowdre.lol/tracking-bear-upvotes-from-my-cabin/ 📡 Originally posted on jbowdre's weblog