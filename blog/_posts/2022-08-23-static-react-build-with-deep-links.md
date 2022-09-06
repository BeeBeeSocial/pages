---
layout: post
title:  "Deep Links in SPAs"
date:   2022-08-23 00:00:00 -0400
featured_image: "/images/beebeesocial-deep-link-profile.png"
categories: update site spa react deep links
---

I've been using Facebook's [React](https://reactjs.org/) framework to build BeeBee.social, starting from a clean [Create React App](https://create-react-app.dev/) project. There were some bumps along the road, but in general it's been a great experience. Everything just works. That is, until I created an optimized build and hosted it on GitHub Pages.

Only the generated index.html and scripts are deployed, so when you try to [deep link into the application](https://beebee.social/user/slowe), you're rewarded with the GitHub Pages 404 error page.

There's really no server configuration on GitHub Pages, but the redirect to a custom 404 is a great hook to add some javascript that works the deep link magic.

![Deep link to Steven's profile page..]({{ "/images/beebeesocial-deep-link-profile.png" | relative_url }})

> Many thanks to [Daniel Buchner](http://www.backalleycoder.com/author/csuwldcat/) for his post on deep links in single-page applications (SPA) that are hosted on [GitHub Pages](https://pages.github.com/).

I won't got into the details here. [Daniel's post](http://www.backalleycoder.com/2016/05/13/sghpa-the-single-page-app-hack-for-github-pages/) has all the info you need to recreate this clever hack.

&mdash; Joe
