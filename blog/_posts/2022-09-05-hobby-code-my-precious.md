---
layout: post
title:  "Hobby Code: My Precious ..."
date:   2022-09-05 00:00:00 -0400
categories: update hobby code gamedev
featured_image: "/images/gamedevutils-old.png"
---

In 2016, [I wrote a sprite packer](http://gamedevutils.com/). It’s cross-platform, cross-browser, and requires no server component. High on my list of hobby priorities is a rewrite of this app. The existing app is in plain JavaScript, and the source code is a mess.

![GameDevUtils.com]({{ "/images/gamedevutils-old.png" | relative_url }})

The goals for the rewrite are:

* Use ReactJS for the UI, TypeScript for the logic.
* Make sure it (still) works in the cross-browser environments that are currently supported.
* Support 100% project compatibility with the current version.
* Support cross-platform desktop apps using ElectronJS.
* Support cross-platform command line interfaces. This is especially handy for a CI/CD pipeline.

> NOTE: This project is temporarily on hold as I build out a prototype for a social media site. The break is mostly to help me hone my skills in TypeScript, React, and DevOps. The work-in-progress is hosted on GitHub Pages, with static data to mock the REST API calls. [Visit BeeBee.social](https://beebee.social/buzz) to take a peek.

&mdash; Joe
