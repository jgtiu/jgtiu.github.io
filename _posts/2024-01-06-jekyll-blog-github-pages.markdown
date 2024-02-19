---
title:  "Getting Jekyll to work on GitHub Pages"
excerpt: "I spent WAY too long figuring this out. Here's a tip to save you the trouble."
tags:
  - jekyll
---

I spent WAY too long getting this site up and running with Jekyll.

The site was looking just fine when I was serving it locally, but once I deployed it on GitHub Pages, it was malformed!

![](/assets/2024-01-06-jekyll-malformed.png)

My mistake was that I tried to build `jgtiu.github.io/<subpage>` on GitHub Pages with the Jekyll theme first before building `jgtiu.github.io` with Jekyll.

I thought that the problem was that I was using a Windows machine to "bundle" my site, but the real bug was that my "root" site `jgtiu.github.io` was not using the Jekyll theme.

Once the root site used Jekyll, everything ran smoothly.

![](/assets/2024-01-06-jekyll-working.png)
