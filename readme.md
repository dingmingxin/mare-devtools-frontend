Mare DevTools Frontend
======================

[![Build Status](https://travis-ci.org/muzuiget/mare-devtools-frontend.svg?branch=master)](https://travis-ci.org/muzuiget/mare-devtools-frontend)

This project is a fork of [Chrome DevTools Frontend][cdf], hack it for [Mare][mare].

[cdf]: https://github.com/ChromeDevTools/devtools-frontend
[mare]: https://github.com/muzuiget/mare

Versioning
----------

In order to keep update on upsteam, there are two kind of version [tags][tags]:

* `chrome-X.Y.Z` Chrome release version, the code in this commit should the same as it in [Chromium codebase][codebase]
* `vA.B.C` this project release version, modify from the former.

When a new Chrome stable version release, we apply the change from scratch, that is, we use `git rebase` not `git merge`. The history will be like below

```
chrome-56.0.0    chrome-57.0.0    upsteam/master
---o----------------o----------------o
   \                \
    ---o             ---o---------o---------o
       v0.1.0           v0.2.0    v0.2.1    master
```

Because `git rebase`, the `master` branch history **will be changed**, is not always a linear history.

[tags]: https://github.com/muzuiget/mare-devtools-frontend/tags
[codebase]: https://chromium.googlesource.com/chromium/src/+refs

Feature
-------

* add lua file syntax highlight
* change some UI display text
* hide all the unnecessary UI

Download
--------

Use `npm` to download.

download the source code for development

```
npm install --save-dev mare-devtools-frontend
```

or download the distribution code for production

```
npm install --save mare-devtools-frontend-dist
```

Development
-----------

Use any HTTP server to host `front_end` directory directly.

To bundle the source in `front_end`, make it load faster, run `./build.sh`, then host the `dist/front_end` directory.

After `./build.sh`, a mare-devtools-frontend.zip file will be created as well, ready to distribute.
