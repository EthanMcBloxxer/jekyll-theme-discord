# jekyll-theme-discord
A one-page Jekyll theme reminiscent of Discord and their UI.

[![GitHub forks](https://img.shields.io/github/forks/EthanMcBloxxer/jekyll-theme-discord?label=published%20sites&style=for-the-badge)](https://github.com/EthanMcBloxxer/jekyll-theme-discord/network) [![GitHub stars](https://img.shields.io/github/stars/EthanMcBloxxer/jekyll-theme-discord?label=likes&style=for-the-badge)](https://github.com/EthanMcBloxxer/jekyll-theme-discord/stargazers) [![GitHub license](https://img.shields.io/github/license/EthanMcBloxxer/jekyll-theme-discord?style=for-the-badge)](https://github.com/EthanMcBloxxer/jekyll-theme-discord/blob/main/license)

![Preview Image](https://bloxxing.is-ne.at/CVaUnO.png)

In practice, this can actually be used as both a blog and a microblog, as the DMs don't have an actual limit to them.

## Installation
For using this theme, you have two options. You can either [fork](https://github.com/EthanMcBloxxer/jekyll-theme-discord/fork) the repository and keep all of the original theme's files in your repo (and clutter it a bit too), or simply copy the `remote` files which allow you to have just 5 files:
* Site Config
* Homepage
* RSS Feed (optional)
* Gemfile (gem config)

& **your content**

### Remote
If you choose to go with the `remote` route and want to keep your site less cluttered, then just go to the [`remote`](https://github.com/EthanMcBloxxer/jekyll-theme-discord/tree/remote/) branch and...

#### Download/clone it
if you wouldn't like to fork it and want the easiest path, you can just download [the ZIP file](https://github.com/EthanMcBloxxer/jekyll-theme-discord/archive/remote.zip) of `remote`, unzip it, make a new repository, and import the extracted files. Just make sure you are uploading all of the seperate files and not the ZIP nor the root of the ZIP.

<details><summary>Example</summary>

![Files to import](https://bloxxing.is-ne.at/LpqEoc.png)
![Creating a repo](https://bloxxing.is-ne.at/X4I4vO.png)
![Upload files hyperlink](https://bloxxing.is-ne.at/BwyqQj.png)
![Uploading the files and commiting](https://bloxxing.is-ne.at/hBVC8y.png)
</details>

Alternatively, if you would rather tell users where to find the initial theme or can't copy over the files, you can also

#### Fork it
by pressing the Fork button in the top right corner or clicking [this link](https://github.com/EthanMcBloxxer/jekyll-theme-discord/fork).

![Fork Button](https://bloxxing.is-ne.at/mzD2F7.png)

This will then copy all files from **every** branch and add them to your repository, so you'll need to make sure that you publish your site from the [`remote` branch](https://github.com/EthanMcBloxxer/jekyll-theme-discord/tree/remote/).

#### Creating yourself
If you still can't get anything to work, just make your repository and make a new file with the contents of each file inside of the [`remote` branch](https://github.com/EthanMcBloxxer/jekyll-theme-discord/tree/remote/). This will probably be more tedious, but you won't be interacting with this repo at all.

#### Power users
Add this code to the beginning or end of your `_config.yml`:

```yaml
remote_theme: EthanMcBloxxer/jekyll-theme-discord@main
collections:
  - dms
plugins:
  - jekyll-remote-theme
  - jekyll-sitemap
  - jekyll-gist
```

(see https://github.com/EthanMcBloxxer/jekyll-theme-discord/blob/remote/_config.yml for viable config settings)

and to your `index.html`'s front matter:

```yaml
---
layout: home
---
```

if you want an rss feed, you'll also need to copy https://github.com/EthanMcBloxxer/jekyll-theme-discord/blob/remote/feed.xml.

### Forking
In this alternative, you will be copying every file from the theme and putting them in your own directory. Every part of your site will be hosted on **your repo**, and your repo only. You can accomplish this by simply clicking the fork button in the top right:

![Fork Button](https://bloxxing.is-ne.at/mzD2F7.png)

or [this link](https://github.com/EthanMcBloxxer/jekyll-theme-discord/fork).

### Ruby Gem
\~coming soon\~

## Publishing
After you've installed your site, you'll need to open the Settings page of your repo.

![Settings button](https://bloxxing.is-ne.at/I83rve.png)

Then, once in Settings >> Options, you need to name your Repository "\<YOUR-GITHUB-USERNAME\>.github.io". Remember to replace \<YOUR-GITHUB-USERNAME\> with... your GitHub username. This is extremely important. Next, scroll down until you see the GitHub Pages section and the Source part.

Select `remote` if you followed:

* Remote > Fork

And select `main` if you followed:

* Remote > Download/clone
* Remote > Creating yourself
* Forking

**Do not use `demo`**.

![GitHub Pages settings preview](https://bloxxing.is-ne.at/GXf5Vq.png)

## Adding Content
If you're ready to start adding your own content, then make a new file called **\_dms/**(any filename)**.md** with content like this:

```markdown
---
# <- everything after hashtags not in quotes ('') or ("") is a comment
dm-date: "Feb 12, 2021" # inside of the quotes is what will be rendered as the date. This doesn't actually have to be a date, it can just be words.
dm-author: "EthanMcBloxxer" # to be shown on the other side of the date, this has — in front of it. To use a mention, put this in the quotes: <span class='dm-mention'>@Name</span>
dm-attachment: "https://example.com/image.png" # this is a URL that can look like that or like this: /assets/avatar.png
dm-label: "just more text" # this is the final spot for DM content, just a normal string. It doesn't have a semantic usage, just put whatever here. It could be a filename, too: "my-file.md"
---

Markdown Content. If you don't know how to write markdown, go to https://www.markdowntutorial.com/ and follow their tutorial.  
If you don't like super friendly web apps, there's also the boring page of `kramdown`,  
the markdown parser Jekyll and this site use: https://kramdown.gettalong.org/syntax.html.
```

If everything up to now was followed well, you'll see your new site and that DM at \<YOUR-GITHUB-USERNAME\>.github.io. To change the default values, like the title of the site, you can edit `index.html`'s *front matter*. That's the content inside of the three hyphens: --- (and closing --- too). Just add:

```yaml
---
layout: home
title: The Daily DM
subtitle: An unexpectedly philosophical blog
---
```

However, this won't satisfy all of your needs, so open `_config.yml` and edit the values there. Please don't edit the bottom part (unless you're adding to it). This may cause your site to break. Namely, ensure this part stays:

```yaml
remote_theme: EthanMcBloxxer/jekyll-theme-discord@main
collections:
  - dms
plugins:
  - jekyll-remote-theme
```

This configures the DMs and actually fetches the theme itself.

## Q&A

*question not listed? open a GitHub discussion, issue, or email [ethanmcbloxxer@pm.me](mailto:ethanmcbloxxer@pm.me).*

### Does this theme support IE?
11, yes, somewhat. See for yourself:

![IE11 image](https://bloxxing.is-ne.at/WWSnit.png)

as shown, there is some unneeded space between the header and content, the images are a bit bad when scaled down, and the `nostyle` \<a\> elements still have the default blue, not to mention the scroll bar doesn't get colored. Additionally, some AnchorJS links don't exist for some reason. Even more, the comments don't get rendered. You can still add a comment, though.

### What are the custom markdown classes?
Currently, we have `*`, `**`, `***`, `__`, `~~`, and `||` as custom-usable Discord ports. You can use these by inserting `{:.port}` above the section you'd like to format, so it'll look like this if you make a spoiler paragraph:

```markdown
{:.||}
this text will be spoiler'd.
```

this syntax is part of kramdown and as such you can also use {: #custom-id} and {: title="custom-tooltip"} for custom "#" anchor links (to be used with AnchorJS?) and custom tooltips. Another quick kramdown tip: you can use {::nomarkdown} (closing {:/}) to make the text inside exempt from processing:

```markdown
{::nomarkdown} **see?** {:/}
```

### Why aren't my analytics working?
Analytics are only loaded when both Do-Not-Track and Global Privacy Control are off. That's also what the `.well-known` folder is for on the `main` branch: telling browsers we respond to GPC (if you want, you can also copy this over to your site's directory to do the same). You cannot override this behavior. I recommend just respecting the user's privacy choices, it's bad enough privacy policies are required by most laws. If anything, I would recommend you make a `privacy.md` file in `/` and tell users this. You don't have to make it super hard to understand like licenses are.

### How much of `main` is bundled?
Jekyll, by default, will bundle the `_includes`, `_layouts`, and `assets` folders, meaning that you'll have all the CSS and JS by default, not the DMs. You can overwrite these from your own theme directory, meaning that if `/assets/css/main.css` is present on your remote repo, then Jekyll will use that file instead of ours. This is the same for `/assets/avatar.png`.

### How can I add a favicon?
Upload `favicon.ico` in the `/` (root) directory. Simple, amiright?  
Although, I also recommend going to [favicon-generator.org](https://www.favicon-generator.org/) and uploading the files given into a directory, then specifying those in `_config.yml`. This will help enrich your site with a single uploaded image. Don't worry about the apple icons, just pick the biggest preset generated one and add that path in `_config.yml`. Also see "I have a `manifest.webmanifest` or a `browserconfig.xml`" for the other files: `android-icon-*` and `ms-icon-*`. Note that the `avatar.16`, `32`, and `96` are also generated with this tool.

### Can I make a custom 404 page?
Yes; you can. Just create `404.html` inside of your main directory (`\`). Unfortunately, we don't have any starter templates or layouts for a 404 page as of current, so you'll need to either use the default layout or make a complete new HTML file without front matter and normal structure.

### What's the difference between `_config.yml` and front matter?
Not much, just the scope of the variables. If you add front matter to DMs or pages, then the variables there are only for that page. In `_config.yml`, the scope is the whole site, so your name will be on each page in the footer.

### Can I have a free custom domain, but not &lt;username&gt;.github.io?
Well, technically. Each user can only have one repo pointing to this GitHub directory, *but* infinite others pointing to &lt;username&gt;.github.io/**your repo name**. This won't change the `.github.io` part nor your username, and in general make the URL longer. If you want this, though, maybe because you're posting a blog at another repo using that URL and want this page at /dm/ (like me), then rename your repo to `dm` (remember to click Rename to save). Then, GitHub will serve this at &lt;username&gt;.github.io/**dm**.

### I have a `manifest.webmanifest` or a `browserconfig.xml`.
There are `_config.yml` values for this; just specify the URL in absolute or relative format and they will be automatically linked in the head. If you have no idea what any of that means, then you shouldn't give it another thought. Seriously. It's just the files for the start menu and app icons. It requires a TON of images.

### Can I embed math?
We have a `mathjax` `_config.yml` parameter if you know how to use MathJax (just set it to `true`).  
Even so, I recommend you look at Katex and [jekyll-katex](https://github.com/linjer/jekyll-katex#jekyll-katex) for much faster rendering. This is because Katex uses pure HTML instead of SVGs, which also makes the math copyable. Katex isn't embedded as a library because it requires in-markdown-post JavaScript code in order to use, and I'd like to not include too many plugins, so `jekyll-katex` is also not automatically available.

### How can I contribute?
Aside from using the theme and pointing users to it, there's the possibility of donating (see [ethanmcbloxxer.github.io/donate](https://ethanmcbloxxer.github.io/donate/)) or actually making features. If you want to do this and assist with development or propose features, then make sure you haven't followed the "Forking" guide. "Remote > Fork" is fine, though. Otherwise, fork the repo. Now, just make your changes to `main`, and open a pull request with a description of what your changes accomplish.

## Using Includes
We have various include files that you can use wherever, not just via the `_config.yml` file. If you need a list of them and parameters to be used, then see below. You shouldn't need to go source-digging.

Syntax: `{% include path/file.ext param="value"}`

### Examples

Example (with HTML files):
```html
<script>
	console.log("can't use jquery right now, but i need it for this page only")
</script>
{% include libraries/jquery.html %}
<script>
	$(function() {
		console.log("jquery is now able to be used, there is a jquery script tag above this one")
	});
</script>
```

Example (with JS files):
```html
<script>
	{% include analytics/gtag.js gtag="G-MYGOOGLEID" %}
</script>
```

### Tree

```
_includes
├── Libraries
│   ├── libraries.html			#(none)				- `if` block to load the below
│   ├── libraries/anchors.html	#anchorjs-script	- AnchorJS		Parameters: (none)
│   ├── libraries/codecopy.html	#codecopy-script	- clipboard.js	Parameters: (none)
│   ├── libraries/jquery.html	#jquery-script		- jQuery		Parameters: (none)
│   ├── libraries/mathjax.html	#mathjax-script		- MathJax		Parameters: (none)
│   └── libraries/polyfill.html	#polyfill-script	- Polyfill.io	Parameters: url
├── Analytics
│   ├── analytics.html			#analytics-script	- `if` block to load the below
│   ├── analytics/amplitude.js	#(none)				- Amplitude		Parameters: key
│   ├── analytics/gtag.js		#(none)				- gTag.js		Parameters: gtag
│   ├── analytics/gtm.js		#(none)				- Tag Manager	Parameters: gtm
│   ├── analytics/hotjar.js		#(none)				- Hotjar		Parameters: id
│   ├── analytics/matomo.js		#(none)				- Matomo		Parameters: uri, id
│   └── analytics/quantcast.js	#(none)				- Quantcast		Parameters: pcode
└── Comments
    ├── comments.html			#(none)				- `if` block to load the below
    ├── comments/disqus.html	#disqus-comments	- Disqus		Parameters: shortname
    ├── comments/facebook.html	#fb-comments		- Facebook		Parameters: id
    └── comments/utterances.html#utterances-comments- Utterances	Parameters: repo
```
