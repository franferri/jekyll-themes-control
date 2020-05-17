# Jekyll Themes Control Plugin

This pluging
* Let you have all your themes in a folder instead of gem files

## Why?

* No more themes as gem packages installed in your environment

Because if you want to modify the theme, you need to **override** the original sources (in the gem) in the Jekyll installation sources.

This is terrible for:
	* Fast development iterations (the key of productivity in development)
	* Mainteinability short and long term of the code
	* Prone to have coupled code between the template override and the source of the page
	* Gem files require certain versions of software, for example a template may work perfectly in Jekyll 4 but is locked to Jekyll 1 in the gem file

* No more mixing and mingling all theme files with your sources that prevents you to change fast between themes

Official documentation tells you to pour the gem contents in your source code as a final solution. Well, I listed above the reasons why this is not a great idea.

## Feature request

While I was testing Jekyll and comparing it with other similar static websites generators, it really felt very unproductive to me.

I have contacted Jekyll project team about this topic, with a feature request. I was not the first doing this...

* My request: https://github.com/jekyll/jekyll/issues/8185
* Random previous request: https://github.com/jekyll/jekyll/issues/6199

They gave me a good response and very fast. Jekyll team is great and quick. In short they told me: "The primary reason for adopting gem-based theme architecture was to ease versioning and distribution"

I disagree, I think that is a poor design decision and I decided to fix it with a plugin.

Encapsulating themes in gem files that you install in your ruby installation to solve verioning and distribution is breaking the agility you need to develop fast and be productive.

Having the sources in a public git repository (you can tag them) solves both.

## Inspiration

Ben Balter plugin: https://github.com/benbalter/jekyll-remote-theme

Ben did a great plugin, works like a charm. This repo is inspired in his plugin, I'm extending the idea to local foldres.
