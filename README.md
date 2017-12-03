# [timpietrusky.com](https://timpietrusky.com)
:computer: :globe_with_meridians: Source Code of my website.

This is a fork of [kevingimbel.com](https://github.com/kevingimbel/kevingimbel.com),
because I ❤️ his article [Deploy a static site with git](https://www.kevingimbel.com/deploy-a-static-site-with-git/) and I want this too for four reasons:

* I want to use GitHub as an online editor for my articles
* SWITCH TO HTTPS 😎
* My current website is using [Keystone](https://github.com/keystonejs/keystone) 0.2.19-beta and there are 4 known vulnerabilities (detected by GitHub) with [one very 🔥 vulnerability](https://nvd.nist.gov/vuln/detail/CVE-2017-16570). This means I have to update to 4.0.0-beta.7 😱. But I don't have to do it thanks to THIS ❤️
* Offline everything, Web Components, real integrations of my projects


THANKS KEVIN!

### Setting up the server on Digital Ocean

* Use Ubuntu 16.04
* [Install Hugo](https://gohugo.io/getting-started/installing/)
** Download Hugo binary `wget https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-64bit.tar.gz`
** Move `hugo` binary into `/usr/local/bin/` so it can be accessed globally
* Use a [deploy key for GitHub](https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys) in order to clone the repo on the server
** Add that key the [deploy keys](https://github.com/TimPietrusky/timpietrusky.com/settings/keys)
* Create a bare repository in your `$HOME`:
```
mkdir -p repository
cd repository
git clone --bare https://github.com/TimPietrusky/timpietrusky.com
```

* TODO: Add missing steps

* Add the bare repo as a remote on your local computer:
```
git remote add production ssh://timpietrusky-production:/home/tim/repository/timpietrusky.com.git
```

Testing

### Contributing

If you wish to contribute you can do so. Contributions can be anything from opening an Issue to actually fixing code.
To build the site locally you first need to [install Hugo](https://gohugo.io/overview/installing/) as well as [Go](https://golang.org/dl/). Next you need to clone the repository to your local machine with git by running `git clone https://github.com/kevingimbel/kevingimbel.com.git`. Once the process is finised go into the new directory and run  `hugo serve $(pwd)` to start hugo with live reload. [See the Hugo quickstarter guide](http://gohugo.io/overview/quickstart/) as well as the [theme documentation](http://gohugo.io/themes/creation/) if you wish to edit code.



### Copyright

All content is created by myself, Tim Pietrusky, if not stated otherwise. You may re-use code snippets from the theme as you like. However, re-distributing content or copying content and pretending it is yours is not allowed. If you wish to quote parts of articles you can do so.

Software or code snippets inside of articles are generally available under [MIT license](https://opensource.org/licenses/MIT) if not stated otherwise and come with no warranty.
