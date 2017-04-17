# dimmedmonokai
A muted alternative to standard Monokai

## Background
I like Monokai. It has been my default go-to theme for various editors for some time. I recently went looking for a Monokai them for iTerm 2 and found that there is a [DimmedMonokai](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/screenshots/dimmed_monokai.png) theme in the [iterm2-color-schemes](http://iterm2colorschemes.com) collection.

I've been using [monokai-theme](https://github.com/oneKelvinSmith/monokai-emacs) with Emacs for a while. It's a great and comprehensive implementation of Monokai and I highly recommend it.

What I have tried to do here it to take the existing Monokai base and apply the Dimmed Monokai colours. Right now it's a work in progress, and I can't guarantee that it's a great port of the colour scheme. It is good enough to use though.

One final thing. I do not use Emacs in a terminal. It's GUI all the way for me, so the colours for terminals with 256 colours or less are the original Monokai colours. If time allows then I'm hoping to do something about that.

## Installation

### Manual

Download `dimmedmonokai-theme.el` to the directory `~/.emacs.d/themes`. Add this to your `.emacs`:

    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

Now you can load the theme with the interactive function `load-theme` like this:

    M-x load-theme RET monokai

### A better way

Use monokai theme, and override the colours.

eg,

    ;; Another way to apply dimmed Monokai...
    (setq ;; foreground and background
    monokai-foreground     "#C5C8C6"
    monokai-background     "#292929"
    ;; highlights and comments
    monokai-comments       "#4B4E55"
    monokai-emphasis       "#CC555A"
    monokai-highlight      "#4B4E55"
    monokai-highlight-alt  "#398280"
    monokai-highlight-line "#4B4E55"
    monokai-line-number    "#9A9B99"
    ;; colours
    monokai-blue           "#60bAB1"
    monokai-cyan           "#68A0B3"
    monokai-green          "#98A84B"
    monokai-gray           "#9A9B99"
    monokai-violet         "#FF2C7A"
    monokai-red            "#CC555A"
    monokai-orange         "#D08442"
    monokai-yellow         "#D0B344")

    (load-theme 'monokai t)

### MELPA

Not yet...
