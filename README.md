# StumpWM Config
This repo contains my [Stump Window Manager][stumpwm-website] 
configuration files.  
I run Stump Window Manager on [Ubuntu][ubuntu-website] 18.04.

## Prerequisites
For installing StumpWM see instructions in the Readme page of the 
[Stumpwm github repo][stump-github-page].

I use the font `DejaVu Sans` and also `FontAwesome` for icons in StumpWM.  
You can get them on Ubuntu by entering this in a terminal:

```shell
sudo apt install ttf-dejavu
sudo apt install fonts-font-awesome
```
Then refresh the font cache in Lisp REPL prompt:
```shell
sbcl --load quicklisp.lisp
(ql:quickload "clx-truetype")
(xft:cache-fonts)
```

## Setup

```shell
git clone https://github.com/jamesmccabe/stumpwm-config ~/.stumpwm.d
git clone https://github.com/stumpwm/stumpwm-contrib ~/.stumpwm.d/modules
```

## License
[GNU GPL v3.0][gpl_license]

[stumpwm-website]: https://stumpwm.github.io/index.html
[ubuntu-website]: https://www.ubuntu.com/desktop
[stump-github-page]: https://github.com/stumpwm/stumpwm
[gpl_license]: https://github.com/jamesmccabe/stumpwm-config/blob/master/LICENSE