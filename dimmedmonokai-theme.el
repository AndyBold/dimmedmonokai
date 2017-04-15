;;; dimmedmonokai-theme.el --- A muted alternative to a fruity color theme for Emacs.

;; Copyright (C) 2017

;; Author: Andrew Bold <andy.bold@gmail.com>
;;
;; Version: 0.0.1

;;; Commentary:
;;
;; This is the Dimmed Monokai theme based on the original Monkai Theme bt Kelvin Smith
;; with a colour scheme taken from DimmedMonokai.itercolors which is part
;; of the iTerm 2 colour themes pack hosted at http://iterm2colorschemes.com
;;
;; The theme is a muted version of the original Monokai. That's it. Full kudos to the
;; Kelvin for the original theme, and the iTerm 2 folks for the colours.
;;
;; Original monokai package details and commentary is below.

;; Based on monokai-theme.el by Kelvin Smith

;; Copyright (C) 2011-2016

;; Author: Kelvin Smith <oneKelvinSmith@gmail.com>
;; URL: http://github.com/oneKelvinSmith/monokai-emacs
;; Package-Version: 20170314.1612
;; Version: 3.3.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A port of the popular Textmate theme Monokai for Emacs 24, built on top
;; of the new built-in theme support in Emacs 24.
;;
;;; Credits:
;;
;; Wimer Hazenberg created the original theme.
;; - http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/
;;
;; Bozhidar Batsov created zenburn-theme.el and solarized-theme.el
;;  on which this file is based.
;; - https://github.com/bbatsov/zenburn-emacs
;;
;; Color Scheme Designer 3 for complementary colours.
;; - http://colorschemedesigner.com/
;;
;; Xterm 256 Color Chart
;; - https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
;;
;; K. Adam Christensen for his personal monokai theme that addresses 256 colours.
;; - https://github.com/pope/personal/blob/master/etc/emacs.d/monokai-theme.el
;;
;; Thomas Frössman for his work on solarized-emacs.
;; - http://github.com/bbatsov/solarized-emacs
;;
;;; Code:

(unless (>= emacs-major-version 24)
  (error "The dimmedmonokai theme requires Emacs 24 or later!"))

(deftheme dimmedmonokai "The Dimmed Monokai colour theme")

(defgroup dimmedmonokai nil
  "Dimmedmonokai theme options.
The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom dimmedmonokai-distinct-fringe-background nil
  "Make the fringe background different from the normal background color.
Also affects 'linum-mode' background."
  :type 'boolean
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-use-variable-pitch nil
  "Use variable pitch face for some headings and titles."
  :type 'boolean
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-height-minus-1 0.8
  "Font size -1."
  :type 'number
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-height-plus-1 1.1
  "Font size +1."
  :type 'number
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-height-plus-2 1.15
  "Font size +2."
  :type 'number
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-height-plus-3 1.2
  "Font size +3."
  :type 'number
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-height-plus-4 1.3
  "Font size +4."
  :type 'number
  :group 'dimmedmonokai)

;; Primary colors
(defcustom dimmedmonokai-yellow "#D0B344"
  "Primary colors - yellow"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-orange "#D08442"
  "Primary colors - orange"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-red "#CC555A"
  "Primary colors - red"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-magenta "#98729F"
  "Primary colors - magenta"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-blue "#708AB1"
  "Primary colors - blue"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-green "#98A84B"
  "Primary colors - green"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-cyan "#68A0B3"
  "Primary colors - cyan"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-violet "#FF2C7A"
  "Primary colors - violet"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-gray "#C5C8C6"
  "Primary colors - gray"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-foreground "#C5C8C6"
  "Adaptive colors - foreground"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-background "#292929"
  "Adaptive colors - background"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-comments "#9A9B99"
  "Adaptive colors - comments"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-emphasis "#C5C8C6"
  "Adaptive colors - emphasis"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-line-number "#9A9B99"
  "Adaptive colors - line number"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-highlight "#4B4E55"
  "Adaptive colors - highlight"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-highlight-alt "#398280"
  "Adaptive colors - highlight"
  :type 'string
  :group 'dimmedmonokai)

(defcustom dimmedmonokai-highlight-line "#4B4E55"
  "Adaptive colors - line highlight"
  :type 'string
  :group 'dimmedmonokai)

(let* (;; Variable pitch
       (dimmedmonokai-pitch (if dimmedmonokai-use-variable-pitch
                          'variable-pitch
                        'default))

       ;; Definitions for guis that support 256 colors
       (dimmedmonokai-class '((class color) (min-colors 257)))

       ;; Darker and lighter accented colors
       (dimmedmonokai-yellow-d       "#BEB244")
       (dimmedmonokai-yellow-l       "#FFF7A8")
       (dimmedmonokai-orange-d       "#D47402")
       (dimmedmonokai-orange-l       "#FFAC4A")
       (dimmedmonokai-red-d          "#F70057")
       (dimmedmonokai-red-l          "#FA518D")
       (dimmedmonokai-magenta-d      "#FB35EA")
       (dimmedmonokai-magenta-l      "#FE8CF4")
       (dimmedmonokai-violet-d       "#945AFF")
       (dimmedmonokai-violet-l       "#C9ACFF")
       (dimmedmonokai-blue-d         "#40CAE4")
       (dimmedmonokai-blue-l         "#92E7F7")
       (dimmedmonokai-cyan-d         "#74DBCD")
       (dimmedmonokai-cyan-l         "#D3FBF6")
       (dimmedmonokai-green-d        "#86C30D")
       (dimmedmonokai-green-l        "#BBEF53")
       (dimmedmonokai-gray-d         "#35331D")
       (dimmedmonokai-gray-l         "#7B7962")
       ;; Adaptive higher/lower contrast accented colors
       (dimmedmonokai-foreground-hc  "#141414")
       (dimmedmonokai-foreground-lc  "#171A0B")
       ;; High contrast colors
       (dimmedmonokai-yellow-hc      "#FFFACE")
       (dimmedmonokai-yellow-lc      "#9A8F21")
       (dimmedmonokai-orange-hc      "#FFBE74")
       (dimmedmonokai-orange-lc      "#A75B00")
       (dimmedmonokai-red-hc         "#FEB0CC")
       (dimmedmonokai-red-lc         "#F20055")
       (dimmedmonokai-magenta-hc     "#FEC6F9")
       (dimmedmonokai-magenta-lc     "#F309DF")
       (dimmedmonokai-violet-hc      "#F0E7FF")
       (dimmedmonokai-violet-lc      "#7830FC")
       (dimmedmonokai-blue-hc        "#CAF5FD")
       (dimmedmonokai-blue-lc        "#1DB4D0")
       (dimmedmonokai-cyan-hc        "#D3FBF6")
       (dimmedmonokai-cyan-lc        "#4BBEAE")
       (dimmedmonokai-green-hc       "#CCF47C")
       (dimmedmonokai-green-lc       "#679A01")

       ;; Distinct fringe
       (dimmedmonokai-fringe-bg (if dimmedmonokai-distinct-fringe-background
                              dimmedmonokai-gray
                            dimmedmonokai-background))

       ;; Definitions for terminals that do not support 256 colors
       (dimmedmonokai-256-class '((class color) (min-colors 89)))
       ;; Primary colors
       (dimmedmonokai-256-yellow         "#CDC673")
       (dimmedmonokai-256-orange         "#FF8C00")
       (dimmedmonokai-256-red            "#FF1493")
       (dimmedmonokai-256-magenta        "#D700D7")
       (dimmedmonokai-256-violet         "#AF87FF")
       (dimmedmonokai-256-blue           "#5FD7FF")
       (dimmedmonokai-256-cyan           "#5FFFFF")
       (dimmedmonokai-256-green          "#87D700")
       (dimmedmonokai-256-gray           "#3D3D3D")
       ;; Darker and lighter accented colors
       (dimmedmonokai-256-yellow-d       "#878700")
       (dimmedmonokai-256-yellow-l       "#FFFF87")
       (dimmedmonokai-256-orange-d       "#AF5F00")
       (dimmedmonokai-256-orange-l       "#FFAF5F")
       (dimmedmonokai-256-red-d          "#870000")
       (dimmedmonokai-256-red-l          "#FF5F87")
       (dimmedmonokai-256-magenta-d      "#AF0087")
       (dimmedmonokai-256-magenta-l      "#FF87DF")
       (dimmedmonokai-256-violet-d       "#5F00AF")
       (dimmedmonokai-256-violet-l       "#AF87D7")
       (dimmedmonokai-256-blue-d         "#008787")
       (dimmedmonokai-256-blue-l         "#87D7FF")
       (dimmedmonokai-256-cyan-d         "#5FAFAF")
       (dimmedmonokai-256-cyan-l         "#AFFFFF")
       (dimmedmonokai-256-green-d        "#5F8700")
       (dimmedmonokai-256-green-l        "#AFD700")
       (dimmedmonokai-256-gray-d         "#333333")
       (dimmedmonokai-256-gray-l         "#707070")
       ;; Adaptive colors
       (dimmedmonokai-256-foreground     "#F5F5F5")
       (dimmedmonokai-256-background     "#1B1E1C")
       (dimmedmonokai-256-comments       "#8B8878")
       (dimmedmonokai-256-emphasis       "#FFFAFA")
       (dimmedmonokai-256-line-number    "#8F908A")
       (dimmedmonokai-256-highlight      "#474747")
       (dimmedmonokai-256-highlight-alt  "#3E3E3E")
       (dimmedmonokai-256-highlight-line "#000000")
       ;; Adaptive higher/lower contrast accented colors
       (dimmedmonokai-256-foreground-hc  "#171A0B")
       (dimmedmonokai-256-foreground-lc  "#141414")
       ;; High contrast colors
       (dimmedmonokai-256-yellow-hc      dimmedmonokai-256-yellow-d)
       (dimmedmonokai-256-yellow-lc      dimmedmonokai-256-yellow-l)
       (dimmedmonokai-256-orange-hc      dimmedmonokai-256-orange-d)
       (dimmedmonokai-256-orange-lc      dimmedmonokai-256-orange-l)
       (dimmedmonokai-256-red-hc         dimmedmonokai-256-red-d)
       (dimmedmonokai-256-red-lc         dimmedmonokai-256-red-l)
       (dimmedmonokai-256-magenta-hc     dimmedmonokai-256-magenta-d)
       (dimmedmonokai-256-magenta-lc     dimmedmonokai-256-magenta-l)
       (dimmedmonokai-256-violet-hc      dimmedmonokai-256-violet-d)
       (dimmedmonokai-256-violet-lc      dimmedmonokai-256-violet-l)
       (dimmedmonokai-256-blue-hc        dimmedmonokai-256-blue-d)
       (dimmedmonokai-256-blue-lc        dimmedmonokai-256-blue-l)
       (dimmedmonokai-256-cyan-hc        dimmedmonokai-256-cyan-d)
       (dimmedmonokai-256-cyan-lc        dimmedmonokai-256-cyan-l)
       (dimmedmonokai-256-green-hc       dimmedmonokai-256-green-d)
       (dimmedmonokai-256-green-lc       dimmedmonokai-256-green-l)

       ;; Distinct fringe
       (dimmedmonokai-256-fringe-bg (if dimmedmonokai-distinct-fringe-background
                                  dimmedmonokai-256-gray
                                dimmedmonokai-256-background)))

  ;; Define faces
  (custom-theme-set-faces
   'dimmedmonokai

   ;; font lock for syntax highlighting
   `(font-lock-builtin-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight normal))))

   `(font-lock-comment-delimiter-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(font-lock-comment-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(font-lock-constant-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(font-lock-doc-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(font-lock-function-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(font-lock-keyword-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight normal))))

   `(font-lock-negation-char-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(font-lock-preprocessor-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(font-lock-regexp-grouping-construct
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal))))

   `(font-lock-regexp-grouping-backslash
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :weight normal))))

   `(font-lock-string-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(font-lock-type-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :italic nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :italic nil))))

   `(font-lock-variable-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(font-lock-warning-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold
                                   :italic t
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold
                                        :italic t
                                        :underline t))))

   `(c-annotation-face
     ((,dimmedmonokai-class (:inherit font-lock-constant-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-constant-face))))

   ;; general colouring
   '(button ((t (:underline t))))

   `(default
      ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                    :background ,dimmedmonokai-background))
       (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                         :background ,dimmedmonokai-256-background))))

   `(highlight
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight))))

   `(lazy-highlight
     ((,dimmedmonokai-class (:inherit highlight
                                :background ,dimmedmonokai-highlight-alt))
      (,dimmedmonokai-256-class  (:inherit highlight
                                     :background ,dimmedmonokai-256-comments))))

   `(region
     ((,dimmedmonokai-class (:inherit highlight
                                :background ,dimmedmonokai-highlight))
      (,dimmedmonokai-256-class  (:inherit highlight
                                     :background ,dimmedmonokai-256-highlight))))

   `(secondary-selection
     ((,dimmedmonokai-class (:inherit region
                                :background ,dimmedmonokai-highlight-alt))
      (,dimmedmonokai-256-class  (:inherit region
                                     :background ,dimmedmonokai-256-highlight-alt))))

   `(shadow
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(match
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold))))

   `(cursor
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-foreground
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-foreground
                                        :inverse-video t))))

   `(mouse
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-foreground
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-foreground
                                        :inverse-video t))))

   `(escape-glyph
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(escape-glyph-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(fringe
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :background ,dimmedmonokai-fringe-bg))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :background ,dimmedmonokai-256-fringe-bg))))

   `(link
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline t
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline t
                                        :weight bold))))

   `(link-visited
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :underline t
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :underline t
                                        :weight normal))))

   `(success
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green ))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green ))))

   `(warning
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow ))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow ))))

   `(error
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(eval-sexp-fu-flash
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-green))))

   `(eval-sexp-fu-flash-error
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-red))))

   `(trailing-whitespace
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red))))

   `(vertical-border
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-gray))))

   `(menu
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :background ,dimmedmonokai-256-background))))

   `(minibuffer-prompt
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   ;; mode-line and powerline
   `(mode-line-buffer-id
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(mode-line
     ((,dimmedmonokai-class (:inverse-video unspecified
                                      :underline unspecified
                                      :foreground ,dimmedmonokai-emphasis
                                      :background ,dimmedmonokai-highlight
                                      :box (:line-width 1
                                                        :color ,dimmedmonokai-gray
                                                        :style unspecified)))
      (,dimmedmonokai-256-class  (:inverse-video unspecified
                                           :underline unspecified
                                           :foreground ,dimmedmonokai-256-foreground
                                           :background ,dimmedmonokai-256-background
                                           :box (:line-width 1
                                                             :color ,dimmedmonokai-256-highlight
                                                             :style unspecified)))))

   `(powerline-active1
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray-d))))

   `(powerline-active2
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background))))


   `(mode-line-inactive
     ((,dimmedmonokai-class (:inverse-video unspecified
                                      :underline unspecified
                                      :foreground ,dimmedmonokai-comments
                                      :background ,dimmedmonokai-background
                                      :box (:line-width 1
                                                        :color ,dimmedmonokai-gray
                                                        :style unspecified)))
      (,dimmedmonokai-256-class  (:inverse-video unspecified
                                           :underline unspecified
                                           :foreground ,dimmedmonokai-256-comments
                                           :background ,dimmedmonokai-256-background
                                           :box (:line-width 1
                                                             :color ,dimmedmonokai-256-gray
                                                             :style unspecified)))))

   `(powerline-inactive1
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray-d))))

   `(powerline-inactive2
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background))))

   ;; header-line
   `(header-line
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-highlight
                                   :box (:color ,dimmedmonokai-gray
                                                :line-width 1
                                                :style unspecified)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-highlight
                                        :box (:color ,dimmedmonokai-256-gray
                                                     :line-width 1
                                                     :style unspecified)))))

   ;; cua
   `(cua-global-mark
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-background))))

   `(cua-rectangle
     ((,dimmedmonokai-class (:inherit region))
      (,dimmedmonokai-256-class  (:inherit region))))

   `(cua-rectangle-noselect
     ((,dimmedmonokai-class (:inherit secondary-selection))
      (,dimmedmonokai-256-class  (:inherit secondary-selection))))

   ;; diary
   `(diary
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   ;; dired
   `(dired-directory
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(dired-flagged
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(dired-header
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(dired-ignored
     ((,dimmedmonokai-class (:inherit shadow))
      (,dimmedmonokai-256-class  (:inherit shadow))))

   `(dired-mark
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(dired-marked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :inherit bold))))

   `(dired-perm-write
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :underline t))))

   `(dired-symlink
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :slant italic))))

   `(dired-warning
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :underline t))))

   ;; dropdown
   `(dropdown-list-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-blue))))

   `(dropdown-list-selection-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background))))

   ;; ecb
   `(ecb-default-highlight-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(ecb-history-bucket-node-dir-soure-path-face
     ((,dimmedmonokai-class (:inherit ecb-history-bucket-node-face
                                :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:inherit ecb-history-bucket-node-face
                                     :foreground ,dimmedmonokai-256-yellow))))

   `(ecb-source-in-directories-buffer-face
     ((,dimmedmonokai-class (:inherit ecb-directories-general-face
                                :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:inherit ecb-directories-general-face
                                     :foreground ,dimmedmonokai-256-foreground))))

   `(ecb-history-dead-buffer-face
     ((,dimmedmonokai-class (:inherit ecb-history-general-face
                                :foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:inherit ecb-history-general-face
                                     :foreground ,dimmedmonokai-256-comments))))

   `(ecb-directory-not-accessible-face
     ((,dimmedmonokai-class (:inherit ecb-directories-general-face
                                :foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:inherit ecb-directories-general-face
                                     :foreground ,dimmedmonokai-256-comments))))

   `(ecb-bucket-node-face
     ((,dimmedmonokai-class (:inherit ecb-default-general-face
                                :weight normal
                                :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:inherit ecb-default-general-face
                                     :weight normal
                                     :foreground ,dimmedmonokai-256-blue))))

   `(ecb-tag-header-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(ecb-analyse-bucket-element-face
     ((,dimmedmonokai-class (:inherit ecb-analyse-general-face
                                :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:inherit ecb-analyse-general-face
                                     :foreground ,dimmedmonokai-256-green))))

   `(ecb-directories-general-face
     ((,dimmedmonokai-class (:inherit ecb-default-general-face
                                :height 1.0))
      (,dimmedmonokai-256-class  (:inherit ecb-default-general-face
                                     :height 1.0))))

   `(ecb-method-non-semantic-face
     ((,dimmedmonokai-class (:inherit ecb-methods-general-face
                                :foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:inherit ecb-methods-general-face
                                     :foreground ,dimmedmonokai-256-cyan))))

   `(ecb-mode-line-prefix-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(ecb-tree-guide-line-face
     ((,dimmedmonokai-class (:inherit ecb-default-general-face
                                :foreground ,dimmedmonokai-gray
                                :height 1.0))
      (,dimmedmonokai-256-class  (:inherit ecb-default-general-face
                                     :foreground ,dimmedmonokai-256-gray
                                     :height 1.0))))

   ;; ee
   `(ee-bookmarked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis))))

   `(ee-category
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(ee-link
     ((,dimmedmonokai-class (:inherit link))
      (,dimmedmonokai-256-class  (:inherit link))))

   `(ee-link-visited
     ((,dimmedmonokai-class (:inherit link-visited))
      (,dimmedmonokai-256-class  (:inherit link-visited))))

   `(ee-marked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :weight bold))))

   `(ee-omitted
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(ee-shadow
     ((,dimmedmonokai-class (:inherit shadow))
      (,dimmedmonokai-256-class  (:inherit shadow))))

   ;; grep
   `(grep-context-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(grep-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold
                                        :underline t))))

   `(grep-hit-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(grep-match-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   ;; isearch
   `(isearch
     ((,dimmedmonokai-class (:inherit region
                                :background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:inherit region
                                     :background ,dimmedmonokai-256-green))))

   `(isearch-fail
     ((,dimmedmonokai-class (:inherit isearch
                                :foreground ,dimmedmonokai-red
                                :background ,dimmedmonokai-background
                                :bold t))
      (,dimmedmonokai-256-class  (:inherit isearch
                                     :foreground ,dimmedmonokai-256-red
                                     :background ,dimmedmonokai-256-background
                                     :bold t))))


   ;; ace-jump-mode
   `(ace-jump-face-background
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-background
                                   :inverse-video nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-background
                                        :inverse-video nil))))

   `(ace-jump-face-foreground
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background ,dimmedmonokai-background
                                   :inverse-video nil
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background ,dimmedmonokai-256-background
                                        :inverse-video nil
                                        :weight bold))))

   ;; auctex
   `(font-latex-bold-face
     ((,dimmedmonokai-class (:inherit bold
                                :foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:inherit bold
                                     :foreground ,dimmedmonokai-256-emphasis))))

   `(font-latex-doctex-documentation-face
     ((,dimmedmonokai-class (:background unspecified))
      (,dimmedmonokai-256-class  (:background unspecified))))

   `(font-latex-doctex-preprocessor-face
     ((,dimmedmonokai-class
       (:inherit (font-latex-doctex-documentation-face
                  font-lock-builtin-face
                  font-lock-preprocessor-face)))
      (,dimmedmonokai-class
       (:inherit (font-latex-doctex-documentation-face
                  font-lock-builtin-face
                  font-lock-preprocessor-face)))))

   `(font-latex-italic-face
     ((,dimmedmonokai-class (:inherit italic :foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:inherit italic :foreground ,dimmedmonokai-256-emphasis))))

   `(font-latex-math-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(font-latex-sectioning-0-face
     ((,dimmedmonokai-class (:inherit font-latex-sectioning-1-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit font-latex-sectioning-1-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(font-latex-sectioning-1-face
     ((,dimmedmonokai-class (:inherit font-latex-sectioning-2-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit font-latex-sectioning-2-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(font-latex-sectioning-2-face
     ((,dimmedmonokai-class (:inherit font-latex-sectioning-3-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit font-latex-sectioning-3-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(font-latex-sectioning-3-face
     ((,dimmedmonokai-class (:inherit font-latex-sectioning-4-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit font-latex-sectioning-4-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(font-latex-sectioning-4-face
     ((,dimmedmonokai-class (:inherit font-latex-sectioning-5-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit font-latex-sectioning-5-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(font-latex-sectioning-5-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-yellow
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch :
                                     foreground ,dimmedmonokai-256-yellow
                                     :weight bold))))

   `(font-latex-sedate-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis))))

   `(font-latex-slide-title-face
     ((,dimmedmonokai-class (:inherit (,dimmedmonokai-pitch font-lock-type-face)
                                :weight bold
                                :height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:inherit (,dimmedmonokai-pitch font-lock-type-face)
                                     :weight bold
                                     :height ,dimmedmonokai-height-plus-3))))

   `(font-latex-string-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(font-latex-subscript-face
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-minus-1))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-minus-1))))

   `(font-latex-superscript-face
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-minus-1))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-minus-1))))

   `(font-latex-verbatim-face
     ((,dimmedmonokai-class (:inherit fixed-pitch
                                :foreground ,dimmedmonokai-foreground
                                :slant italic))
      (,dimmedmonokai-256-class  (:inherit fixed-pitch
                                     :foreground ,dimmedmonokai-256-foreground
                                     :slant italic))))

   `(font-latex-warning-face
     ((,dimmedmonokai-class (:inherit bold
                                :foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:inherit bold
                                     :foreground ,dimmedmonokai-256-orange))))

   ;; auto-complete
   `(ac-candidate-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-blue))))

   `(ac-selection-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(ac-candidate-mouse-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(ac-completion-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :underline t))))

   `(ac-gtags-candidate-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-blue))))

   `(ac-gtags-selection-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(ac-yasnippet-candidate-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-yellow))))

   `(ac-yasnippet-selection-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-background))))

   ;; auto highlight symbol
   `(ahs-definition-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-blue))))

   `(ahs-edit-mode-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-highlight))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-highlight))))

   `(ahs-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :background unspecified))))

   `(ahs-plugin-bod-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-violet ))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-cyan ))))

   `(ahs-plugin-defalt-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-orange))))

   `(ahs-plugin-whole-buffer-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-green))))

   `(ahs-warning-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   ;; android mode
   `(android-mode-debug-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(android-mode-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   `(android-mode-info-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(android-mode-verbose-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(android-mode-warning-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   ;; anzu-mode
   `(anzu-mode-line
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :weight bold))))

   ;; bm
   `(bm-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc
                                        :foreground ,dimmedmonokai-256-background))))

   `(bm-fringe-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc
                                        :foreground ,dimmedmonokai-256-background))))

   `(bm-fringe-persistent-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-background))))

   `(bm-persistent-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-background))))

   ;; calfw
   `(cfw:face-day-title
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(cfw:face-annotation
     ((,dimmedmonokai-class (:inherit cfw:face-day-title
                                :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:inherit cfw:face-day-title
                                     :foreground ,dimmedmonokai-256-yellow))))

   `(cfw:face-default-content
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(cfw:face-default-day
     ((,dimmedmonokai-class (:inherit cfw:face-day-title
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit cfw:face-day-title
                                     :weight bold))))

   `(cfw:face-disable
     ((,dimmedmonokai-class (:inherit cfw:face-day-title
                                :foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:inherit cfw:face-day-title
                                     :foreground ,dimmedmonokai-256-comments))))

   `(cfw:face-grid
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(cfw:face-header
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-hc
                                   :background ,dimmedmonokai-blue-lc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-hc
                                        :background ,dimmedmonokai-256-blue-lc
                                        :weight bold))))

   `(cfw:face-holiday
     ((,dimmedmonokai-class (:background nil
                                   :foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background nil
                                        :foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   `(cfw:face-periods
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta))))

   `(cfw:face-select
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta-lc
                                   :foreground ,dimmedmonokai-magenta-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-magenta-lc
                                        :foreground ,dimmedmonokai-256-magenta-hc))))

   `(cfw:face-saturday
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan-hc
                                   :background ,dimmedmonokai-cyan-lc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan-hc
                                        :background ,dimmedmonokai-256-cyan-lc))))

   `(cfw:face-sunday
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red-hc
                                   :background ,dimmedmonokai-red-lc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red-hc
                                        :background ,dimmedmonokai-256-red-lc
                                        :weight bold))))

   `(cfw:face-title
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-yellow
                                :weight bold
                                :height ,dimmedmonokai-height-plus-4))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-yellow
                                     :weight bold
                                     :height ,dimmedmonokai-height-plus-4))))

   `(cfw:face-today
     ((,dimmedmonokai-class (:weight bold
                               :background ,dimmedmonokai-highlight-line
                               :foreground nil))
      (,dimmedmonokai-256-class  (:weight bold
                                    :background ,dimmedmonokai-256-highlight-line
                                    :foreground nil))))

   `(cfw:face-today-title
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc
                                   :foreground ,dimmedmonokai-yellow-hc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc
                                        :foreground ,dimmedmonokai-256-yellow-hc
                                        :weight bold))))

   `(cfw:face-toolbar
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(cfw:face-toolbar-button-off
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc
                                   :foreground ,dimmedmonokai-yellow-hc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc
                                        :foreground ,dimmedmonokai-256-yellow-hc
                                        :weight bold))))

   `(cfw:face-toolbar-button-on
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-hc
                                   :foreground ,dimmedmonokai-yellow-lc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-hc
                                        :foreground ,dimmedmonokai-256-yellow-lc
                                        :weight bold))))

   ;; cider
   `(cider-enlightened
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background nil
                                   :box (:color ,dimmedmonokai-yellow :line-width -1 :style nil)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background nil
                                        :box (:color ,dimmedmonokai-256-yellow :line-width -1 :style nil))) ))

   `(cider-enlightened-local
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(cider-instrumented-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :background nil
                                   :box (:color ,dimmedmonokai-violet :line-width -1 :style nil)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :background nil
                                        :box (:color ,dimmedmonokai-256-violet :line-width -1 :style nil)))))

   `(cider-result-overlay-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background nil
                                   :box (:color ,dimmedmonokai-blue :line-width -1 :style nil)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background nil
                                        :box (:color ,dimmedmonokai-256-blue :line-width -1 :style nil)))))

   `(cider-test-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-orange))))

   `(cider-test-failure-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-red))))

   `(cider-test-success-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-green))))

   `(cider-traced-face
     ((,dimmedmonokai-class :box (:color ,dimmedmonokai-blue :line-width -1 :style nil))
      (,dimmedmonokai-256-class  :box (:color ,dimmedmonokai-256-blue :line-width -1 :style nil))))

   ;; clojure-test
   `(clojure-test-failure-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold
                                        :underline t))))

   `(clojure-test-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold
                                        :underline t))))

   `(clojure-test-success-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold
                                        :underline t))))

   ;; company-mode
   `(company-tooltip
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis))))

   `(company-tooltip-selection
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(company-tooltip-mouse
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(company-tooltip-common
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline t))))

   `(company-tooltip-common-selection
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-blue
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-blue
                                        :underline t))))

   `(company-preview
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis))))

   `(company-preview-common
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline t))))

   `(company-scrollbar-bg
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray))))

   `(company-scrollbar-fg
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments))))

   `(company-tooltip-annotation
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-green))))

   `(company-template-field
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-blue))))

   ;; compilation
   `(compilation-column-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :underline nil))))

   `(compilation-column-number
     ((,dimmedmonokai-class (:inherit font-lock-doc-face
                                :foreground ,dimmedmonokai-cyan
                                :underline nil))
      (,dimmedmonokai-256-class  (:inherit font-lock-doc-face
                                     :foreground ,dimmedmonokai-256-cyan
                                     :underline nil))))

   `(compilation-enter-directory-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :underline nil))))

   `(compilation-error
     ((,dimmedmonokai-class (:inherit error
                                :underline nil))
      (,dimmedmonokai-256-class  (:inherit error
                                     :underline nil))))

   `(compilation-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :underline nil))))

   `(compilation-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :underline nil))))

   `(compilation-info
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :underline nil
                                   :bold nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :underline nil
                                        :bold nil))))

   `(compilation-info-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline nil))))

   `(compilation-leave-directory-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :underline nil))))

   `(compilation-line-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :underline nil))))

   `(compilation-line-number
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :underline nil))))

   `(compilation-warning
     ((,dimmedmonokai-class (:inherit warning
                                :underline nil))
      (,dimmedmonokai-256-class  (:inherit warning
                                     :underline nil))))

   `(compilation-warning-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal
                                        :underline nil))))

   `(compilation-mode-line-exit
     ((,dimmedmonokai-class (:inherit compilation-info
                                :foreground ,dimmedmonokai-green
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit compilation-info
                                     :foreground ,dimmedmonokai-256-green
                                     :weight bold))))

   `(compilation-mode-line-fail
     ((,dimmedmonokai-class (:inherit compilation-error
                                :foreground ,dimmedmonokai-red
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit compilation-error
                                     :foreground ,dimmedmonokai-256-red
                                     :weight bold))))

   `(compilation-mode-line-run
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   ;; CSCOPE
   `(cscope-file-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(cscope-function-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(cscope-line-number-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(cscope-line-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(cscope-mouse-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-foreground))))

   ;; ctable
   `(ctbl:face-cell-select
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :underline ,dimmedmonokai-emphasis
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :underline ,dimmedmonokai-256-emphasis
                                        :weight bold))))

   `(ctbl:face-continue-bar
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray
                                   :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray
                                        :foreground ,dimmedmonokai-256-yellow))))

   `(ctbl:face-row-select
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground
                                   :underline t))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground
                                        :underline t))))

   ;; coffee
   `(coffee-mode-class-name
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(coffee-mode-function-param
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :slant italic))))

   ;; custom
   `(custom-face-tag
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :height ,dimmedmonokai-height-plus-3
                                :foreground ,dimmedmonokai-violet
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :height ,dimmedmonokai-height-plus-3
                                     :foreground ,dimmedmonokai-256-violet
                                     :weight bold))))

   `(custom-variable-tag
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-cyan
                                :height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-cyan
                                     :height ,dimmedmonokai-height-plus-3))))

   `(custom-comment-tag
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(custom-group-tag
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-blue
                                :height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-blue
                                     :height ,dimmedmonokai-height-plus-3))))

   `(custom-group-tag-1
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-red
                                :height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-red
                                     :height ,dimmedmonokai-height-plus-3))))

   `(custom-state
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   ;; diff
   `(diff-added
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background))))

   `(diff-changed
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background))))

   `(diff-removed
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background))))

   `(diff-header
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background))))

   `(diff-file-header
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground
                                        :weight bold))))

   `(diff-refine-added
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-green))))

   `(diff-refine-change
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-blue))))

   `(diff-refine-removed
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-red))))

   ;; diff-hl
   `(diff-hl-change
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-lc
                                   :foreground ,dimmedmonokai-blue-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-lc
                                        :foreground ,dimmedmonokai-256-blue-hc))))

   `(diff-hl-delete
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-lc
                                   :foreground ,dimmedmonokai-red-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-lc
                                        :foreground ,dimmedmonokai-256-red-hc))))

   `(diff-hl-insert
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-green-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-green-hc))))

   `(diff-hl-unknown
     ((,dimmedmonokai-class (:background ,dimmedmonokai-violet-lc
                                   :foreground ,dimmedmonokai-violet-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-violet-lc
                                        :foreground ,dimmedmonokai-256-violet-hc))))

   ;; ediff
   `(ediff-fine-diff-A
     ((,dimmedmonokai-class (:background ,dimmedmonokai-orange-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-orange-lc))))

   `(ediff-fine-diff-B
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc))))

   `(ediff-fine-diff-C
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc))))

   `(ediff-current-diff-C
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-lc))))

   `(ediff-even-diff-A
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-foreground-lc ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-foreground-lc ))))

   `(ediff-odd-diff-A
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-foreground-hc ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-foreground-hc ))))

   `(ediff-even-diff-B
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-foreground-hc ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-foreground-hc ))))

   `(ediff-odd-diff-B
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-foreground-lc ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-foreground-lc ))))

   `(ediff-even-diff-C
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-foreground ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-foreground ))))

   `(ediff-odd-diff-C
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-background ))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-background ))))

   ;; edts
   `(edts-face-error-line
     ((,(append '((supports :underline (:style line))) dimmedmonokai-class)
       (:underline (:style line :color ,dimmedmonokai-red)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-red-hc
                                   :background ,dimmedmonokai-red-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style line))) dimmedmonokai-256-class )
       (:underline (:style line :color ,dimmedmonokai-256-red)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red-hc
                                        :background ,dimmedmonokai-256-red-lc
                                        :weight bold
                                        :underline t))))

   `(edts-face-warning-line
     ((,(append '((supports :underline (:style line))) dimmedmonokai-class)
       (:underline (:style line :color ,dimmedmonokai-yellow)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow-hc
                                   :background ,dimmedmonokai-yellow-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style line))) dimmedmonokai-256-class )
       (:underline (:style line :color ,dimmedmonokai-256-yellow)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow-hc
                                        :background ,dimmedmonokai-256-yellow-lc
                                        :weight bold
                                        :underline t))))

   `(edts-face-error-fringe-bitmap
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background unspecified
                                        :weight bold))))

   `(edts-face-warning-fringe-bitmap
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background unspecified
                                        :weight bold))))

   `(edts-face-error-mode-line
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground unspecified))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground unspecified))))

   `(edts-face-warning-mode-line
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground unspecified))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground unspecified))))


   ;; elfeed
   `(elfeed-search-date-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(elfeed-search-feed-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(elfeed-search-tag-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(elfeed-search-title-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   ;; ein
   `(ein:cell-input-area
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))
   `(ein:cell-input-prompt
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))
   `(ein:cell-output-prompt
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))
   `(ein:notification-tab-normal
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))
   `(ein:notification-tab-selected
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange :inherit bold))))

   ;; enhanced ruby mode
   `(enh-ruby-string-delimiter-face
     ((,dimmedmonokai-class (:inherit font-lock-string-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-string-face))))

   `(enh-ruby-heredoc-delimiter-face
     ((,dimmedmonokai-class (:inherit font-lock-string-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-string-face))))

   `(enh-ruby-regexp-delimiter-face
     ((,dimmedmonokai-class (:inherit font-lock-string-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-string-face))))

   `(enh-ruby-op-face
     ((,dimmedmonokai-class (:inherit font-lock-keyword-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-keyword-face))))

   ;; erm-syn
   `(erm-syn-errline
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-red)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-red-hc
                                   :background ,dimmedmonokai-red-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-red)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red-hc
                                        :background ,dimmedmonokai-256-red-lc
                                        :weight bold
                                        :underline t))))

   `(erm-syn-warnline
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-orange)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-orange-hc
                                   :background ,dimmedmonokai-orange-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-orange)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange-hc
                                        :background ,dimmedmonokai-256-orange-lc
                                        :weight bold
                                        :underline t))))

   ;; epc
   `(epc:face-title
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :underline nil))))

   ;; erc
   `(erc-action-face
     ((,dimmedmonokai-class (:inherit erc-default-face))
      (,dimmedmonokai-256-class  (:inherit erc-default-face))))

   `(erc-bold-face
     ((,dimmedmonokai-class (:weight bold))
      (,dimmedmonokai-256-class  (:weight bold))))

   `(erc-current-nick-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   `(erc-dangerous-host-face
     ((,dimmedmonokai-class (:inherit font-lock-warning-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-warning-face))))

   `(erc-default-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(erc-highlight-face
     ((,dimmedmonokai-class (:inherit erc-default-face
                                :background ,dimmedmonokai-highlight))
      (,dimmedmonokai-256-class  (:inherit erc-default-face
                                     :background ,dimmedmonokai-256-highlight))))

   `(erc-direct-msg-face
     ((,dimmedmonokai-class (:inherit erc-default-face))
      (,dimmedmonokai-256-class  (:inherit erc-default-face))))

   `(erc-error-face
     ((,dimmedmonokai-class (:inherit font-lock-warning-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-warning-face))))

   `(erc-fool-face
     ((,dimmedmonokai-class (:inherit erc-default-face))
      (,dimmedmonokai-256-class  (:inherit erc-default-face))))

   `(erc-input-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(erc-keyword-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   `(erc-nick-default-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(erc-my-nick-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   `(erc-nick-msg-face
     ((,dimmedmonokai-class (:inherit erc-default-face))
      (,dimmedmonokai-256-class  (:inherit erc-default-face))))

   `(erc-notice-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(erc-pal-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   `(erc-prompt-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :background ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :background ,dimmedmonokai-256-background
                                        :weight bold))))

   `(erc-timestamp-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(erc-underline-face
     ((t (:underline t))))

   ;; eshell
   `(eshell-prompt
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :inherit bold))))

   `(eshell-ls-archive
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :inherit bold))))

   `(eshell-ls-backup
     ((,dimmedmonokai-class (:inherit font-lock-comment-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face))))

   `(eshell-ls-clutter
     ((,dimmedmonokai-class (:inherit font-lock-comment-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face))))

   `(eshell-ls-directory
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :inherit bold))))

   `(eshell-ls-executable
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :inherit bold))))

   `(eshell-ls-unreadable
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(eshell-ls-missing
     ((,dimmedmonokai-class (:inherit font-lock-warning-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-warning-face))))

   `(eshell-ls-product
     ((,dimmedmonokai-class (:inherit font-lock-doc-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-doc-face))))

   `(eshell-ls-special
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :inherit bold))))

   `(eshell-ls-symlink
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :inherit bold))))

   ;; evil-ex-substitute
   `(evil-ex-substitute-matches
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-red-l
                                   :inherit italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-red-l
                                        :inherit italic))))
   `(evil-ex-substitute-replacement
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-green-l
                                   :inherit italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line :foreground ,dimmedmonokai-256-green-l :inherit italic))))

   ;; evil-search-highlight-persist
   `(evil-search-highlight-persist-highlight-face
     ((,dimmedmonokai-class (:inherit region))
      (,dimmedmonokai-256-class  (:inherit region))))

   ;; fic
   `(fic-author-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-orange
                                   :underline t
                                   :slant italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-orange
                                        :underline t
                                        :slant italic))))

   `(fic-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-orange
                                   :weight normal
                                   :slant italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-orange
                                        :weight normal
                                        :slant italic))))

   `(font-lock-fic-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-orange
                                   :weight normal
                                   :slant italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-orange
                                        :weight normal
                                        :slant italic))))

   ;; flx
   `(flx-highlight-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight normal
                                        :underline nil))))

   ;; flymake
   `(flymake-errline
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-red)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-red-hc
                                   :background ,dimmedmonokai-red-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-red)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red-hc
                                        :background ,dimmedmonokai-256-red-lc
                                        :weight bold
                                        :underline t))))

   `(flymake-infoline
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-green)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-green-hc
                                   :background ,dimmedmonokai-green-lc))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-green)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green-hc
                                        :background ,dimmedmonokai-256-green-lc))))

   `(flymake-warnline
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-yellow)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow-hc
                                   :background ,dimmedmonokai-yellow-lc
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-yellow)
                   :inherit unspecified
                   :foreground unspecified
                   :background unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow-hc
                                        :background ,dimmedmonokai-256-yellow-lc
                                        :weight bold
                                        :underline t))))

   ;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) dimmedmonokai-class)
       (:underline (:style line :color ,dimmedmonokai-red)))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style line))) dimmedmonokai-256-class )
       (:underline (:style line :color ,dimmedmonokai-256-red)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :weight bold
                                        :underline t))))

   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) dimmedmonokai-class)
       (:underline (:style line :color ,dimmedmonokai-orange)))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :background ,dimmedmonokai-background
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style line))) dimmedmonokai-256-class )
       (:underline (:style line :color ,dimmedmonokai-256-orange)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :background ,dimmedmonokai-256-background
                                        :weight bold
                                        :underline t))))

   `(flycheck-info
     ((,(append '((supports :underline (:style line))) dimmedmonokai-class)
       (:underline (:style line :color ,dimmedmonokai-blue)))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-background
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style line))) dimmedmonokai-256-class )
       (:underline (:style line :color ,dimmedmonokai-256-blue)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background
                                        :weight bold
                                        :underline t))))

   `(flycheck-fringe-error
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red-l
                                   :background unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red-l
                                        :background unspecified
                                        :weight bold))))

   `(flycheck-fringe-warning
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange-l
                                   :background unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange-l
                                        :background unspecified
                                        :weight bold))))

   `(flycheck-fringe-info
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-l
                                   :background unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-l
                                        :background unspecified
                                        :weight bold))))

   ;; flyspell
   `(flyspell-duplicate
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-yellow)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-yellow)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold
                                        :underline t))))

   `(flyspell-incorrect
     ((,(append '((supports :underline (:style wave))) dimmedmonokai-class)
       (:underline (:style wave :color ,dimmedmonokai-red)
                   :inherit unspecified))
      (,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold
                                   :underline t))
      (,(append '((supports :underline (:style wave))) dimmedmonokai-256-class )
       (:underline (:style wave :color ,dimmedmonokai-256-red)
                   :inherit unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold
                                        :underline t))))


   ;; git-gutter
   `(git-gutter:added
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter:deleted
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter:modified
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter:unchanged
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   ;; git-gutter-fr
   `(git-gutter-fr:added
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :inherit bold))))

   `(git-gutter-fr:deleted
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :inherit bold))))

   `(git-gutter-fr:modified
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :inherit bold))))

   ;; git-gutter+ and git-gutter+-fr
   `(git-gutter+-added
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter+-deleted
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter+-modified
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter+-unchanged
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-background
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-background
                                        :inherit bold))))

   `(git-gutter-fr+-added
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(git-gutter-fr+-deleted
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   `(git-gutter-fr+-modified
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   ;; git-timemachine
   `(git-timemachine-minibuffer-detail-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-highlight-line
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-blue
                                        :background ,dimmedmonokai-256-highlight-line
                                        :inherit bold))))

   ;; guide-key
   `(guide-key/highlight-command-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(guide-key/key-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(guide-key/prefix-command-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   ;; gnus
   `(gnus-group-mail-1
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-mail-1-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-mail-1-empty))))

   `(gnus-group-mail-1-empty
     ((,dimmedmonokai-class (:inherit gnus-group-news-1-empty))
      (,dimmedmonokai-256-class  (:inherit gnus-group-news-1-empty))))

   `(gnus-group-mail-2
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-mail-2-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-mail-2-empty))))

   `(gnus-group-mail-2-empty
     ((,dimmedmonokai-class (:inherit gnus-group-news-2-empty))
      (,dimmedmonokai-256-class  (:inherit gnus-group-news-2-empty))))

   `(gnus-group-mail-3
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-mail-3-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-mail-3-empty))))

   `(gnus-group-mail-3-empty
     ((,dimmedmonokai-class (:inherit gnus-group-news-3-empty))
      (,dimmedmonokai-256-class  (:inherit gnus-group-news-3-empty))))

   `(gnus-group-mail-low
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-mail-low-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-mail-low-empty))))

   `(gnus-group-mail-low-empty
     ((,dimmedmonokai-class (:inherit gnus-group-news-low-empty))
      (,dimmedmonokai-256-class  (:inherit gnus-group-news-low-empty))))

   `(gnus-group-news-1
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-1-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-1-empty))))

   `(gnus-group-news-2
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-2-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-2-empty))))

   `(gnus-group-news-3
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-3-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-3-empty))))

   `(gnus-group-news-4
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-4-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-4-empty))))

   `(gnus-group-news-5
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-5-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-5-empty))))

   `(gnus-group-news-6
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-6-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-6-empty))))

   `(gnus-group-news-low
     ((,dimmedmonokai-class (:weight bold
                               :inherit gnus-group-news-low-empty))
      (,dimmedmonokai-256-class  (:weight bold
                                    :inherit gnus-group-news-low-empty))))

   `(gnus-header-content
     ((,dimmedmonokai-class (:inherit message-header-other))
      (,dimmedmonokai-256-class  (:inherit message-header-other))))

   `(gnus-header-from
     ((,dimmedmonokai-class (:inherit message-header-other))
      (,dimmedmonokai-256-class  (:inherit message-header-other))))

   `(gnus-header-name
     ((,dimmedmonokai-class (:inherit message-header-name))
      (,dimmedmonokai-256-class  (:inherit message-header-name))))

   `(gnus-header-newsgroups
     ((,dimmedmonokai-class (:inherit message-header-other))
      (,dimmedmonokai-256-class  (:inherit message-header-other))))

   `(gnus-header-subject
     ((,dimmedmonokai-class (:inherit message-header-subject))
      (,dimmedmonokai-256-class  (:inherit message-header-subject))))

   `(gnus-summary-cancelled
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(gnus-summary-high-ancient
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   `(gnus-summary-high-read
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(gnus-summary-high-ticked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   `(gnus-summary-high-unread
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight bold))))

   `(gnus-summary-low-ancient
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-summary-low-read
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-summary-low-ticked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(gnus-summary-low-unread
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(gnus-summary-normal-ancient
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-summary-normal-read
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-summary-normal-ticked
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(gnus-summary-normal-unread
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(gnus-summary-selected
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(gnus-cite-1
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-cite-2
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-cite-3
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-cite-4
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-cite-5
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-cite-6
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-cite-7
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(gnus-cite-8
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(gnus-cite-9
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(gnus-cite-10
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(gnus-cite-11
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(gnus-group-news-1-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(gnus-group-news-2-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-group-news-3-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(gnus-group-news-4-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-group-news-5-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(gnus-group-news-6-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-lc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-lc))))

   `(gnus-group-news-low-empty
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(gnus-signature
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(gnus-x-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-foreground
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-foreground
                                        :foreground ,dimmedmonokai-256-background))))


   ;; helm
   `(helm-apt-deinstalled
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(helm-apt-installed
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-bookmark-directory
     ((,dimmedmonokai-class (:inherit helm-ff-directory))
      (,dimmedmonokai-256-class  (:inherit helm-ff-directory))))

   `(helm-bookmark-file
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(helm-bookmark-gnus
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(helm-bookmark-info
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-bookmark-man
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(helm-bookmark-w3m
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(helm-bookmarks-su
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(helm-buffer-file
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(helm-buffer-directory
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(helm-buffer-process
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(helm-buffer-saved-out
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :inverse-video t))))

   `(helm-buffer-size
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(helm-candidate-number
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :bold t))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :bold t))))

   `(helm-ff-directory
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(helm-ff-executable
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-ff-file
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(helm-ff-invalid-symlink
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-orange
                                   :slant italic))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-orange
                                        :slant italic))))

   `(helm-ff-prefix
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background))))

   `(helm-ff-symlink
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(helm-grep-file
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :underline t))))

   `(helm-grep-finish
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-grep-lineno
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(helm-grep-match
     ((,dimmedmonokai-class (:inherit helm-match)))
     ((,dimmedmonokai-256-class  (:inherit helm-match))))

   `(helm-grep-running
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(helm-header
     ((,dimmedmonokai-class (:inherit header-line))
      (,dimmedmonokai-256-class  (:inherit terminal-header-line))))

   `(helm-lisp-completion-info
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(helm-lisp-show-completion
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background ,dimmedmonokai-highlight-line
                                   :bold t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background ,dimmedmonokai-256-highlight-line
                                        :bold t))))

   `(helm-M-x-key
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :underline t))))

   `(helm-moccur-buffer
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :underline t))))

   `(helm-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green :inherit bold))))

   `(helm-match-item
     ((,dimmedmonokai-class (:inherit helm-match))
      (,dimmedmonokai-256-class  (:inherit helm-match))))

   `(helm-selection
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight
                                   :inherit bold
                                   :underline nil))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight
                                        :inherit bold
                                        :underline nil))))

   `(helm-selection-line
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :underline nil))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :underline nil))))

   `(helm-separator
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-gray))))

   `(helm-source-header
     ((,dimmedmonokai-class (:background ,dimmedmonokai-violet-l
                                   :foreground ,dimmedmonokai-background
                                   :underline nil))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-violet-l
                                        :foreground ,dimmedmonokai-256-background
                                        :underline nil))))

   `(helm-swoop-target-line-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(helm-swoop-target-line-block-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(helm-swoop-target-word-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-time-zone-current
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(helm-time-zone-home
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(helm-visible-mark
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-magenta :bold t))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-magenta :bold t))))

   ;; helm-ls-git
   `(helm-ls-git-modified-not-staged-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-blue)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-blue)))

   `(helm-ls-git-modified-and-staged-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-blue-l)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-blue-l)))

   `(helm-ls-git-renamed-modified-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-blue-l)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-blue-l)))

   `(helm-ls-git-untracked-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-orange)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-orange)))

   `(helm-ls-git-added-copied-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-green)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-green)))

   `(helm-ls-git-added-modified-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-green-l)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-green-l)))

   `(helm-ls-git-deleted-not-staged-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-red)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-red)))

   `(helm-ls-git-deleted-and-staged-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-red-l)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-red-l)))

   `(helm-ls-git-conflict-face
     ((,dimmedmonokai-class :foreground ,dimmedmonokai-yellow)
      (,dimmedmonokai-256-class  :foreground ,dimmedmonokai-256-yellow)))

   ;; hi-lock-mode
   `(hi-yellow
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow-lc
                                   :background ,dimmedmonokai-yellow-hc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow-lc
                                        :background ,dimmedmonokai-256-yellow-hc))))

   `(hi-pink
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta-lc
                                   :background ,dimmedmonokai-magenta-hc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta-lc
                                        :background ,dimmedmonokai-256-magenta-hc))))

   `(hi-green
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green-lc
                                   :background ,dimmedmonokai-green-hc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green-lc
                                        :background ,dimmedmonokai-256-green-hc))))

   `(hi-blue
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-lc
                                   :background ,dimmedmonokai-blue-hc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-lc
                                        :background ,dimmedmonokai-256-blue-hc))))

   `(hi-black-b
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background
                                        :weight bold))))

   `(hi-blue-b
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-lc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-lc
                                        :weight bold))))

   `(hi-green-b
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green-lc
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green-lc
                                        :weight bold))))

   `(hi-red-b
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))))

   `(hi-black-hb
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background
                                        :weight bold))))

   ;; highlight-changes
   `(highlight-changes
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(highlight-changes-delete
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :underline t))))

   ;; highlight-indentation
   `(highlight-indentation-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray))))

   `(highlight-indentation-current-column-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray))))

   ;; hl-line-mode
   `(hl-line
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(hl-line-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   ;; ido-mode
   `(ido-first-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal))))

   `(ido-only-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-yellow
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-yellow
                                        :weight normal))))

   `(ido-subdir
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(ido-incomplete-regexp
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold ))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold ))))

   `(ido-indicator
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-background
                                   :width condensed))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-background
                                        :width condensed))))

   `(ido-virtual
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   ;; info
   `(info-header-xref
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :inherit bold
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :inherit bold
                                        :underline t))))

   `(info-menu
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(info-node
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :inherit bold))))

   `(info-quoted-name
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(info-reference-item
     ((,dimmedmonokai-class (:background nil
                                   :underline t
                                   :inherit bold))
      (,dimmedmonokai-256-class  (:background nil
                                        :underline t
                                        :inherit bold))))

   `(info-string
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(info-title-1
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-plus-4))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-plus-4))))

   `(info-title-2
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-plus-3))))

   `(info-title-3
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-plus-2))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-plus-2))))

   `(info-title-4
     ((,dimmedmonokai-class (:height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:height ,dimmedmonokai-height-plus-1))))

   ;; ivy
   `(ivy-current-match
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray :inherit bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-gray-l :inherit bold))))

   `(ivy-minibuffer-match-face-1
     ((,dimmedmonokai-class (:inherit bold))
      (,dimmedmonokai-256-class  (:inherit bold))))

   `(ivy-minibuffer-match-face-2
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :underline t))))

   `(ivy-minibuffer-match-face-3
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :underline t))))

   `(ivy-minibuffer-match-face-4
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :underline t))))

   `(ivy-remote
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(swiper-line-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))))

   `(swiper-match-face-1
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray-d))))

   `(swiper-match-face-2
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green))))

   `(swiper-match-face-3
     ((,dimmedmonokai-class (:background ,dimmedmonokai-orange))))

   `(swiper-match-face-4
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta))))

   ;; jabber
   `(jabber-activity-face
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-red))))

   `(jabber-activity-personal-face
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-blue))))

   `(jabber-chat-error
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-red))))

   `(jabber-chat-prompt-foreign
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-red))))

   `(jabber-chat-prompt-local
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-blue))))

   `(jabber-chat-prompt-system
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-green))))

   `(jabber-chat-text-foreign
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(jabber-chat-text-local
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(jabber-chat-rare-time-face
     ((,dimmedmonokai-class (:underline t
                                  :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:underline t
                                       :foreground ,dimmedmonokai-256-green))))

   `(jabber-roster-user-away
     ((,dimmedmonokai-class (:slant italic
                              :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:slant italic
                                   :foreground ,dimmedmonokai-256-green))))

   `(jabber-roster-user-chatty
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-orange))))

   `(jabber-roster-user-dnd
     ((,dimmedmonokai-class (:slant italic
                              :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:slant italic
                                   :foreground ,dimmedmonokai-256-red))))

   `(jabber-roster-user-error
     ((,dimmedmonokai-class (:weight light
                               :slant italic
                               :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:weight light
                                    :slant italic
                                    :foreground ,dimmedmonokai-256-red))))

   `(jabber-roster-user-offline
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(jabber-roster-user-online
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-blue))))

   `(jabber-roster-user-xa
     ((,dimmedmonokai-class (:slant italic
                              :foreground ,dimmedmonokai-magenta))
      (,dimmedmonokai-256-class  (:slant italic
                                   :foreground ,dimmedmonokai-256-magenta))))

   ;; js2-mode colors
   `(js2-error
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(js2-external-variable
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(js2-function-call
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(js2-function-param
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(js2-instance-member
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(js2-jsdoc-html-tag-delimiter
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(js2-jsdoc-html-tag-name
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(js2-jsdoc-tag
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(js2-jsdoc-type
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(js2-jsdoc-value
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(js2-magic-paren
     ((,dimmedmonokai-class (:underline t))
      (,dimmedmonokai-256-class  (:underline t))))

   `(js2-object-property
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(js2-private-function-call
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(js2-private-member
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(js2-warning
     ((,dimmedmonokai-class (:underline ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:underline ,dimmedmonokai-256-orange))))

   ;; jedi
   `(jedi:highlight-function-argument
     ((,dimmedmonokai-class (:inherit bold))
      (,dimmedmonokai-256-class  (:inherit bold))))

   ;; linum-mode
   `(linum
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-line-number
                                   :background ,dimmedmonokai-fringe-bg
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-line-number
                                        :background ,dimmedmonokai-256-fringe-bg
                                        :underline nil))))

   ;; linum-relative-current-face
   `(linum-relative-current-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-line-number
                                   :background ,dimmedmonokai-highlight-line
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-line-number
                                        :background ,dimmedmonokai-256-highlight-line
                                        :underline nil))))

   ;; lusty-explorer
   `(lusty-directory-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-directory))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-directory))))

   `(lusty-file-face
     ((,dimmedmonokai-class nil)
      (,dimmedmonokai-256-class  nil)))

   `(lusty-match-face
     ((,dimmedmonokai-class (:inherit ido-first-match))
      (,dimmedmonokai-256-class  (:inherit ido-first-match))))

   `(lusty-slash-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :weight bold))))

   ;; magit
   ;;
   ;; TODO: Add supports for all magit faces
   ;; https://github.com/magit/magit/search?utf8=%E2%9C%93&q=face
   ;;
   `(magit-diff-added
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background))))

   `(magit-diff-added-highlight
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-highlight-line))))

   `(magit-diff-removed
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background))))

   `(magit-diff-removed-highlight
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-highlight-line))))

   `(magit-section-title
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(magit-branch
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   `(magit-item-highlight
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :weight unspecified))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :weight unspecified))))

   `(magit-log-author
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(magit-log-graph
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(magit-log-head-label-bisect-bad
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-hc
                                   :foreground ,dimmedmonokai-red-lc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-hc
                                        :foreground ,dimmedmonokai-256-red-lc
                                        :box 1))))

   `(magit-log-head-label-bisect-good
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-hc
                                   :foreground ,dimmedmonokai-green-lc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-hc
                                        :foreground ,dimmedmonokai-256-green-lc
                                        :box 1))))

   `(magit-log-head-label-default
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :box 1))))

   `(magit-log-head-label-local
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-lc
                                   :foreground ,dimmedmonokai-blue-hc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-lc
                                        :foreground ,dimmedmonokai-256-blue-hc
                                        :box 1))))

   `(magit-log-head-label-patches
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-lc
                                   :foreground ,dimmedmonokai-red-hc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-lc
                                        :foreground ,dimmedmonokai-256-red-hc
                                        :box 1))))

   `(magit-log-head-label-remote
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-green-hc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-green-hc
                                        :box 1))))

   `(magit-log-head-label-tags
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc
                                   :foreground ,dimmedmonokai-yellow-hc
                                   :box 1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc
                                        :foreground ,dimmedmonokai-256-yellow-hc
                                        :box 1))))

   `(magit-log-sha1
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   ;; man
   `(Man-overstrike
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   `(Man-reverse
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(Man-underline
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green :underline t))))

   ;; monky
   `(monky-section-title
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(monky-diff-add
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(monky-diff-del
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; markdown-mode
   `(markdown-header-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(markdown-header-face-1
     ((,dimmedmonokai-class (:inherit markdown-header-face
                                :height ,dimmedmonokai-height-plus-4))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face
                                     :height ,dimmedmonokai-height-plus-4))))

   `(markdown-header-face-2
     ((,dimmedmonokai-class (:inherit markdown-header-face
                                :height ,dimmedmonokai-height-plus-3))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face
                                     :height ,dimmedmonokai-height-plus-3))))

   `(markdown-header-face-3
     ((,dimmedmonokai-class (:inherit markdown-header-face
                                :height ,dimmedmonokai-height-plus-2))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face
                                     :height ,dimmedmonokai-height-plus-2))))

   `(markdown-header-face-4
     ((,dimmedmonokai-class (:inherit markdown-header-face
                                :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face
                                     :height ,dimmedmonokai-height-plus-1))))

   `(markdown-header-face-5
     ((,dimmedmonokai-class (:inherit markdown-header-face))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face))))

   `(markdown-header-face-6
     ((,dimmedmonokai-class (:inherit markdown-header-face))
      (,dimmedmonokai-256-class  (:inherit markdown-header-face))))

   ;; message-mode
   `(message-cited-text
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(message-header-name
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(message-header-other
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight normal))))

   `(message-header-to
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight normal))))

   `(message-header-cc
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight normal))))

   `(message-header-newsgroups
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(message-header-subject
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :weight normal))))

   `(message-header-xheader
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(message-mml
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(message-separator
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :slant italic))))

   ;; mew
   `(mew-face-header-subject
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(mew-face-header-from
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(mew-face-header-date
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-header-to
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-header-key
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-header-private
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-header-important
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(mew-face-header-marginal
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight bold))))

   `(mew-face-header-warning
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-header-xmew
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-header-xmew-bad
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-body-url
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(mew-face-body-comment
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :slant italic))))

   `(mew-face-body-cite1
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-body-cite2
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(mew-face-body-cite3
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(mew-face-body-cite4
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(mew-face-body-cite5
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-mark-review
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(mew-face-mark-escape
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-mark-delete
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-mark-unlink
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(mew-face-mark-refile
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-mark-unread
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(mew-face-eof-message
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(mew-face-eof-part
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   ;; mingus
   `(mingus-directory-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(mingus-pausing-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta))))

   `(mingus-playing-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(mingus-playlist-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan ))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan ))))

   `(mingus-song-file-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(mingus-stopped-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; mmm
   `(mmm-init-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-violet-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-violet-d))))

   `(mmm-cleanup-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-orange-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-orange-d))))

   `(mmm-declaration-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-cyan-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-cyan-d))))

   `(mmm-comment-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-d))))

   `(mmm-output-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-d))))

   `(mmm-special-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-d))))

   `(mmm-code-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray))))

   `(mmm-default-submode-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-gray-d))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-gray-d))))

   ;; moccur
   `(moccur-current-line-face
     ((,dimmedmonokai-class (:underline t))
      (,dimmedmonokai-256-class  (:underline t))))

   `(moccur-edit-done-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-background
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-background
                                        :slant italic))))

   `(moccur-edit-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-background))))

   `(moccur-edit-file-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(moccur-edit-reject-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(moccur-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :weight bold))))

   `(search-buffers-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :weight bold))))

   `(search-buffers-header-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   ;; mu4e
   `(mu4e-cited-1-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-2-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-3-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-4-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-5-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-6-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :slant italic
                                        :weight normal))))

   `(mu4e-cited-7-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :slant italic
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :slant italic
                                        :weight normal))))

   `(mu4e-flagged-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :weight bold))))

   `(mu4e-view-url-number-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal))))

   `(mu4e-warning-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :slant normal
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :slant normal
                                        :weight bold))))

   `(mu4e-header-highlight-face
     ((,dimmedmonokai-class (:inherit unspecified
                                :foreground unspecified
                                :background ,dimmedmonokai-highlight-line
                                :underline ,dimmedmonokai-emphasis
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit unspecified
                                     :foreground unspecified
                                     :background ,dimmedmonokai-256-highlight-line
                                     :underline ,dimmedmonokai-256-emphasis
                                     :weight normal))))


   `(mu4e-draft-face
     ((,dimmedmonokai-class (:inherit font-lock-string-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-string-face))))

   `(mu4e-footer-face
     ((,dimmedmonokai-class (:inherit font-lock-comment-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face))))

   `(mu4e-forwarded-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face
                                     :weight normal))))

   `(mu4e-header-face
     ((,dimmedmonokai-class (:inherit default))
      (,dimmedmonokai-256-class  (:inherit default))))

   `(mu4e-header-marks-face
     ((,dimmedmonokai-class (:inherit font-lock-preprocessor-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-preprocessor-face))))

   `(mu4e-header-title-face
     ((,dimmedmonokai-class (:inherit font-lock-type-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-type-face))))

   `(mu4e-highlight-face
     ((,dimmedmonokai-class (:inherit font-lock-pseudo-keyword-face
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit font-lock-pseudo-keyword-face
                                     :weight bold))))

   `(mu4e-moved-face
     ((,dimmedmonokai-class (:inherit font-lock-comment-face
                                :slant italic))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face
                                     :slant italic))))

   `(mu4e-ok-face
     ((,dimmedmonokai-class (:inherit font-lock-comment-face
                                :slant normal
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face
                                     :slant normal
                                     :weight bold))))

   `(mu4e-replied-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face
                                     :weight normal))))

   `(mu4e-system-face
     ((,dimmedmonokai-class (:inherit font-lock-comment-face
                                :slant italic))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face
                                     :slant italic))))

   `(mu4e-title-face
     ((,dimmedmonokai-class (:inherit font-lock-type-face
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit font-lock-type-face
                                     :weight bold))))

   `(mu4e-trashed-face
     ((,dimmedmonokai-class (:inherit font-lock-comment-face
                                :strike-through t))
      (,dimmedmonokai-256-class  (:inherit font-lock-comment-face
                                     :strike-through t))))

   `(mu4e-unread-face
     ((,dimmedmonokai-class (:inherit font-lock-keyword-face
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit font-lock-keyword-face
                                     :weight bold))))

   `(mu4e-view-attach-number-face
     ((,dimmedmonokai-class (:inherit font-lock-variable-name-face
                                :weight bold))
      (,dimmedmonokai-256-class  (:inherit font-lock-variable-name-face
                                     :weight bold))))

   `(mu4e-view-contact-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :weight normal))))

   `(mu4e-view-header-key-face
     ((,dimmedmonokai-class (:inherit message-header-name
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit message-header-name
                                     :weight normal))))

   `(mu4e-view-header-value-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :weight normal
                                   :slant normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :weight normal
                                        :slant normal))))

   `(mu4e-view-link-face
     ((,dimmedmonokai-class (:inherit link))
      (,dimmedmonokai-256-class  (:inherit link))))

   `(mu4e-view-special-header-value-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight normal
                                        :underline nil))))

   ;; mumamo
   `(mumamo-background-chunk-submode1
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   ;; nav
   `(nav-face-heading
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(nav-face-button-num
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(nav-face-dir
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(nav-face-hdir
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(nav-face-file
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(nav-face-hfile
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; nav-flash
   `(nav-flash-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   ;; neo-tree
   `(neo-banner-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background
                                        :weight bold))))


   `(neo-header-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background))))

   `(neo-root-dir-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background))))

   `(neo-dir-link-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-background))))

   `(neo-file-link-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(neo-button-face
     ((,dimmedmonokai-class (:underline nil))
      (,dimmedmonokai-256-class  (:underline nil))))

   `(neo-expand-btn-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(neo-vc-default-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(neo-vc-user-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :slant italic))))

   `(neo-vc-up-to-date-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(neo-vc-edited-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(neo-vc-needs-update-face
     ((,dimmedmonokai-class (:underline t))
      (,dimmedmonokai-256-class  (:underline t))))

   `(neo-vc-needs-merge-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(neo-vc-unlocked-changes-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-comments))))

   `(neo-vc-added-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(neo-vc-removed-face
     ((,dimmedmonokai-class (:strike-through t))
      (,dimmedmonokai-256-class  (:strike-through t))))

   `(neo-vc-conflict-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(neo-vc-missing-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(neo-vc-ignored-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   ;; adoc-mode / markup
   `(markup-meta-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-gray-l))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-gray-l))))

   `(markup-table-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue-hc
                                   :background ,dimmedmonokai-blue-lc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue-hc
                                        :background ,dimmedmonokai-256-blue-lc))))

   `(markup-verbatim-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-orange-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-orange-lc))))

   `(markup-list-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet-hc
                                   :background ,dimmedmonokai-violet-lc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet-hc
                                        :background ,dimmedmonokai-256-violet-lc))))

   `(markup-replacement-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(markup-complex-replacement-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet-hc
                                   :background ,dimmedmonokai-violet-lc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet-hc
                                        :background ,dimmedmonokai-256-violet-lc))))

   `(markup-gen-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(markup-secondary-text-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; org-mode
   `(org-agenda-structure
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-highlight-line
                                   :weight bold
                                   :slant normal
                                   :inverse-video nil
                                   :height ,dimmedmonokai-height-plus-1
                                   :underline nil
                                   :box (:line-width 2 :color ,dimmedmonokai-background)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-highlight-line
                                        :weight bold
                                        :slant normal
                                        :inverse-video nil
                                        :height ,dimmedmonokai-height-plus-1
                                        :underline nil
                                        :box (:line-width 2 :color ,dimmedmonokai-256-background)))))

   `(org-agenda-calendar-event
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis))))

   `(org-agenda-calendar-sexp
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :slant italic))))

   `(org-agenda-date
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video nil
                                   :overline nil
                                   :slant normal
                                   :height 1.0
                                   :box (:line-width 2 :color ,dimmedmonokai-background)))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video nil
                                        :overline nil
                                        :slant normal
                                        :height 1.0
                                        :box (:line-width 2 :color ,dimmedmonokai-256-background)))) t)

   `(org-agenda-date-weekend
     ((,dimmedmonokai-class (:inherit org-agenda-date
                                :inverse-video nil
                                :background unspecified
                                :foreground ,dimmedmonokai-comments
                                :weight unspecified
                                :underline t
                                :overline nil
                                :box unspecified))
      (,dimmedmonokai-256-class  (:inherit org-agenda-date
                                     :inverse-video nil
                                     :background unspecified
                                     :foreground ,dimmedmonokai-256-comments
                                     :weight unspecified
                                     :underline t
                                     :overline nil
                                     :box unspecified))) t)

   `(org-agenda-date-today
     ((,dimmedmonokai-class (:inherit org-agenda-date
                                :inverse-video t
                                :weight bold
                                :underline unspecified
                                :overline nil
                                :box unspecified
                                :foreground ,dimmedmonokai-blue
                                :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:inherit org-agenda-date
                                     :inverse-video t
                                     :weight bold
                                     :underline unspecified
                                     :overline nil
                                     :box unspecified
                                     :foreground ,dimmedmonokai-256-blue
                                     :background ,dimmedmonokai-256-background))) t)

   `(org-agenda-done
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :slant italic))) t)

   `(org-archived
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :weight normal))))

   `(org-block
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-highlight-alt))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-highlight-alt))))

   `(org-block-background
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-alt))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-alt))))

   `(org-block-begin-line
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-gray-d
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-gray-d
                                        :slant italic))))

   `(org-block-end-line
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-gray-d
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-gray-d
                                        :slant italic))))

   `(org-checkbox
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground
                                   :box (:line-width 1 :style released-button)))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground
                                        :box (:line-width 1 :style released-button)))))

   `(org-code
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(org-date
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline t))))

   `(org-done
     ((,dimmedmonokai-class (:weight bold
                               :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:weight bold
                                    :foreground ,dimmedmonokai-256-green))))

   `(org-ellipsis
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(org-formula
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(org-headline-done
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(org-hide
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background))))

   `(org-level-1
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :height ,dimmedmonokai-height-plus-4
                                :foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :height ,dimmedmonokai-height-plus-4
                                     :foreground ,dimmedmonokai-256-orange))))

   `(org-level-2
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :height ,dimmedmonokai-height-plus-3
                                :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :height ,dimmedmonokai-height-plus-3
                                     :foreground ,dimmedmonokai-256-green))))

   `(org-level-3
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :height ,dimmedmonokai-height-plus-2
                                :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :height ,dimmedmonokai-height-plus-2
                                     :foreground ,dimmedmonokai-256-blue))))

   `(org-level-4
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :height ,dimmedmonokai-height-plus-1
                                :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :height ,dimmedmonokai-height-plus-1
                                     :foreground ,dimmedmonokai-256-yellow))))

   `(org-level-5
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-cyan))))

   `(org-level-6
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-green))))

   `(org-level-7
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-red))))

   `(org-level-8
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-blue))))

   `(org-link
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :underline t))))

   `(org-sexp-date
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(org-scheduled
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(org-scheduled-previously
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(org-scheduled-today
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :weight normal))))

   `(org-special-keyword
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :weight bold))))

   `(org-table
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(org-tag
     ((,dimmedmonokai-class (:weight bold))
      (,dimmedmonokai-256-class  (:weight bold))))

   `(org-time-grid
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(org-todo
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold)))
     ((,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   `(org-upcoming-deadline
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal
                                        :underline nil))))

   `(org-warning
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange
                                   :weight normal
                                   :underline nil))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange
                                        :weight normal
                                        :underline nil))))

   ;; org-habit (clear=blue, ready=green, alert=yellow, overdue=red. future=lower contrast)
   `(org-habit-clear-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-lc
                                   :foreground ,dimmedmonokai-blue-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-lc
                                        :foreground ,dimmedmonokai-256-blue-hc))))

   `(org-habit-clear-future-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue-lc))))

   `(org-habit-ready-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-green))))

   `(org-habit-ready-future-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc))))

   `(org-habit-alert-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-yellow-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-yellow-lc))))

   `(org-habit-alert-future-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow-lc))))

   `(org-habit-overdue-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-red-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-red-lc))))

   `(org-habit-overdue-future-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-lc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-lc))))

   ;; latest additions
   `(org-agenda-dimmed-todo-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(org-agenda-restriction-lock
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow))))

   `(org-clock-overlay
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow))))

   `(org-column
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :strike-through nil
                                   :underline nil
                                   :slant normal
                                   :weight normal
                                   :inherit default))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :strike-through nil
                                        :underline nil
                                        :slant normal
                                        :weight normal
                                        :inherit default))))

   `(org-column-title
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :underline t
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :underline t
                                        :weight bold))))

   `(org-date-selected
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :inverse-video t))))

   `(org-document-info
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(org-document-title
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :weight bold
                                   :height ,dimmedmonokai-height-plus-4))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :weight bold
                                        :height ,dimmedmonokai-height-plus-4))))

   `(org-drawer
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(org-footnote
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :underline t))))

   `(org-latex-and-export-specials
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(org-mode-line-clock-overrun
     ((,dimmedmonokai-class (:inherit mode-line))
      (,dimmedmonokai-256-class  (:inherit mode-line))))

   ;; outline
   `(outline-1
     ((,dimmedmonokai-class (:inherit org-level-1))
      (,dimmedmonokai-256-class  (:inherit org-level-1))))

   `(outline-2
     ((,dimmedmonokai-class (:inherit org-level-2))
      (,dimmedmonokai-256-class  (:inherit org-level-2))))

   `(outline-3
     ((,dimmedmonokai-class (:inherit org-level-3))
      (,dimmedmonokai-256-class  (:inherit org-level-3))))

   `(outline-4
     ((,dimmedmonokai-class (:inherit org-level-4))
      (,dimmedmonokai-256-class  (:inherit org-level-4))))

   `(outline-5
     ((,dimmedmonokai-class (:inherit org-level-5))
      (,dimmedmonokai-256-class  (:inherit org-level-5))))

   `(outline-6
     ((,dimmedmonokai-class (:inherit org-level-6))
      (,dimmedmonokai-256-class  (:inherit org-level-6))))

   `(outline-7
     ((,dimmedmonokai-class (:inherit org-level-7))
      (,dimmedmonokai-256-class  (:inherit org-level-7))))

   `(outline-8
     ((,dimmedmonokai-class (:inherit org-level-8))
      (,dimmedmonokai-256-class  (:inherit org-level-8))))

   ;; parenface
   `(paren-face
     ((,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-comments))))

   ;; perspective
   `(persp-selected-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :weight bold))))

   ;; pretty-mode
   `(pretty-mode-symbol-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight normal))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight normal))))

   ;; popup
   `(popup-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(popup-isearch-match
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green))))

   `(popup-menu-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(popup-menu-mouse-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(popup-menu-selection-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-magenta
                                        :foreground ,dimmedmonokai-256-background))))

   `(popup-scroll-bar-background-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments))))

   `(popup-scroll-bar-foreground-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-emphasis))))

   `(popup-tip-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(rainbow-delimiters-depth-2-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(rainbow-delimiters-depth-3-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(rainbow-delimiters-depth-4-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(rainbow-delimiters-depth-5-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(rainbow-delimiters-depth-6-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(rainbow-delimiters-depth-7-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(rainbow-delimiters-depth-8-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(rainbow-delimiters-depth-9-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(rainbow-delimiters-depth-10-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(rainbow-delimiters-depth-11-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(rainbow-delimiters-depth-12-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(rainbow-delimiters-unmatched-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :background ,dimmedmonokai-background
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :background ,dimmedmonokai-256-background
                                        :inverse-video t))))

   ;; rhtm-mode
   `(erb-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background))))

   `(erb-delim-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :background ,dimmedmonokai-256-background))))

   `(erb-exec-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background))))

   `(erb-exec-delim-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :background ,dimmedmonokai-256-background))))

   `(erb-out-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background))))

   `(erb-out-delim-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :background ,dimmedmonokai-256-background))))

   `(erb-comment-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background))))

   `(erb-comment-delim-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :background ,dimmedmonokai-256-background))))

   ;; rst-mode
   `(rst-level-1-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-background))))

   `(rst-level-2-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-cyan
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-cyan
                                        :foreground ,dimmedmonokai-256-background))))

   `(rst-level-3-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background))))

   `(rst-level-4-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-violet
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-violet
                                        :foreground ,dimmedmonokai-256-background))))

   `(rst-level-5-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-magenta
                                        :foreground ,dimmedmonokai-256-background))))

   `(rst-level-6-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-background))))

   ;; rpm-mode
   `(rpm-spec-dir-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(rpm-spec-doc-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(rpm-spec-ghost-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(rpm-spec-macro-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(rpm-spec-obsolete-tag-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(rpm-spec-package-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(rpm-spec-section-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(rpm-spec-tag-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(rpm-spec-var-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; sh-mode
   `(sh-quoted-exec
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet
                                        :weight bold))))

   `(sh-escaped-newline
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   `(sh-heredoc
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :weight bold))))

   ;; smartparens
   `(sp-pair-overlay-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(sp-wrap-overlay-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(sp-wrap-tag-overlay-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(sp-show-pair-enclosing
     ((,dimmedmonokai-class (:inherit highlight))
      (,dimmedmonokai-256-class  (:inherit highlight))))

   `(sp-show-pair-match-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   `(sp-show-pair-mismatch-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   ;; show-paren
   `(show-paren-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   `(show-paren-mismatch
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   ;; mic-paren
   `(paren-face-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   `(paren-face-mismatch
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   `(paren-face-no-match
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-background
                                   :weight normal
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-background
                                        :weight normal
                                        :inverse-video t))))

   ;; SLIME
   `(slime-repl-inputed-output-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; speedbar
   `(speedbar-button-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-comments))))

   `(speedbar-directory-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-blue))))

   `(speedbar-file-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-foreground))))

   `(speedbar-highlight-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :background ,dimmedmonokai-256-highlight-line))))

   `(speedbar-selected-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-yellow
                                :underline t))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-yellow
                                     :underline t))))

   `(speedbar-separator-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :background ,dimmedmonokai-blue
                                :foreground ,dimmedmonokai-background
                                :overline ,dimmedmonokai-cyan-lc))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :background ,dimmedmonokai-256-blue
                                     :foreground ,dimmedmonokai-256-background
                                     :overline ,dimmedmonokai-256-cyan-lc))))

   `(speedbar-tag-face
     ((,dimmedmonokai-class (:inherit ,dimmedmonokai-pitch
                                :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:inherit ,dimmedmonokai-pitch
                                     :foreground ,dimmedmonokai-256-green))))

   ;; sunrise commander headings
   `(sr-active-path-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-blue
                                   :foreground ,dimmedmonokai-background
                                   :height ,dimmedmonokai-height-plus-1
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-blue
                                        :foreground ,dimmedmonokai-256-background
                                        :height ,dimmedmonokai-height-plus-1
                                        :weight bold))))

   `(sr-editing-path-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-yellow
                                   :foreground ,dimmedmonokai-background
                                   :weight bold
                                   :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-yellow
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold
                                        :height ,dimmedmonokai-height-plus-1))))

   `(sr-highlight-path-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green
                                   :foreground ,dimmedmonokai-background
                                   :weight bold
                                   :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold
                                        :height ,dimmedmonokai-height-plus-1))))

   `(sr-passive-path-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-comments
                                   :foreground ,dimmedmonokai-background
                                   :weight bold
                                   :height ,dimmedmonokai-height-plus-1))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-comments
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold
                                        :height ,dimmedmonokai-height-plus-1))))

   ;; sunrise commander marked
   `(sr-marked-dir-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-marked))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-marked))))

   `(sr-marked-file-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-marked))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-marked))))

   `(sr-alt-marked-dir-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta
                                   :foreground ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-magenta
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold))))

   `(sr-alt-marked-file-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-magenta
                                   :foreground ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-magenta
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold))))

   ;; sunrise commander fstat
   `(sr-directory-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-directory
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-directory
                                     :weight normal))))

   `(sr-symlink-directory-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-directory
                                :slant italic
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-directory
                                     :slant italic
                                     :weight normal))))

   `(sr-symlink-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-symlink
                                :slant italic
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-symlink
                                     :slant italic
                                     :weight normal))))

   `(sr-broken-link-face
     ((,dimmedmonokai-class (:inherit didimmedmonokai-red-warning
                                :slant italic
                                :weight normal))
      (,dimmedmonokai-256-class  (:inherit didimmedmonokai-red-warning
                                     :slant italic
                                     :weight normal))))

   ;; sunrise commander file types
   `(sr-compressed-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(sr-encrypted-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(sr-log-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(sr-packaged-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(sr-html-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(sr-xml-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   ;; sunrise commander misc
   `(sr-clex-hotchar-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red
                                   :foreground ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red
                                        :foreground ,dimmedmonokai-256-background
                                        :weight bold))))

   ;; syslog-mode
   `(syslog-ip-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-yellow))))

   `(syslog-hour-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-green))))

   `(syslog-error-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-red
                                        :weight bold))))

   `(syslog-warn-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-orange
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-orange
                                        :weight bold))))

   `(syslog-info-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-blue
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-blue
                                        :weight bold))))

   `(syslog-debug-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-cyan
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-cyan
                                        :weight bold))))

   `(syslog-su-face
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-magenta))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-magenta))))

   ;; table
   `(table-cell
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :background ,dimmedmonokai-256-highlight-line))))

   ;; term
   `(term-color-black
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-background
                                   :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-background
                                        :background ,dimmedmonokai-256-highlight-line))))

   `(term-color-red
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :background ,dimmedmonokai-red-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :background ,dimmedmonokai-256-red-d))))

   `(term-color-green
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :background ,dimmedmonokai-green-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :background ,dimmedmonokai-256-green-d))))

   `(term-color-yellow
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background ,dimmedmonokai-yellow-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background ,dimmedmonokai-256-yellow-d))))

   `(term-color-blue
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-blue-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-blue-d))))

   `(term-color-magenta
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta
                                   :background ,dimmedmonokai-magenta-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :background ,dimmedmonokai-256-magenta-d))))

   `(term-color-cyan
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan
                                   :background ,dimmedmonokai-cyan-d))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan
                                        :background ,dimmedmonokai-256-cyan-d))))

   `(term-color-white
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-foreground))))

   `(term-default-fg-color
     ((,dimmedmonokai-class (:inherit term-color-white))
      (,dimmedmonokai-256-class  (:inherit term-color-white))))

   `(term-default-bg-color
     ((,dimmedmonokai-class (:inherit term-color-black))
      (,dimmedmonokai-256-class  (:inherit term-color-black))))

   ;; tooltip. (NOTE: This setting has no effect on the os widgets for me
   ;; zencoding uses this)
   `(tooltip
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-l
                                   :foreground ,dimmedmonokai-background
                                   :inherit ,dimmedmonokai-pitch))))

   ;; tuareg
   `(tuareg-font-lock-governing-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta
                                        :weight bold))))

   `(tuareg-font-lock-multistage-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :background ,dimmedmonokai-highlight-line
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :background ,dimmedmonokai-256-highlight-line
                                        :weight bold))))

   `(tuareg-font-lock-operator-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis))))

   `(tuareg-font-lock-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :background ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :background ,dimmedmonokai-256-red
                                        :weight bold))))

   `(tuareg-font-lock-interactive-output-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-cyan))))

   `(tuareg-font-lock-interactive-error-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   ;; undo-tree
   `(undo-tree-visualizer-default-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-background))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-background))))

   `(undo-tree-visualizer-unmodified-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(undo-tree-visualizer-current-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue
                                        :inverse-video t))))

   `(undo-tree-visualizer-active-branch-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :background ,dimmedmonokai-background
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :background ,dimmedmonokai-256-background
                                        :weight bold))))

   `(undo-tree-visualizer-register-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   ;; volatile highlights
   `(vhl/default-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-green-lc
                                   :foreground ,dimmedmonokai-green-hc))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-green-lc
                                        :foreground ,dimmedmonokai-256-green-hc))))

   ;; w3m
   `(w3m-anchor
     ((,dimmedmonokai-class (:inherit link))
      (,dimmedmonokai-256-class  (:inherit link))))

   `(w3m-arrived-anchor
     ((,dimmedmonokai-class (:inherit link-visited))
      (,dimmedmonokai-256-class  (:inherit link-visited))))

   `(w3m-form
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(w3m-header-line-location-title
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-yellow))))

   `(w3m-header-line-location-content

     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(w3m-bold
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :weight bold))))

   `(w3m-image-anchor
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-cyan
                                   :inherit link))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-cyan
                                        :inherit link))))

   `(w3m-image
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-cyan))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-cyan))))

   `(w3m-lnum-minibuffer-prompt
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis))))

   `(w3m-lnum-match
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line))))

   `(w3m-lnum
     ((,dimmedmonokai-class (:underline nil
                                  :bold nil
                                  :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:underline nil
                                       :bold nil
                                       :foreground ,dimmedmonokai-256-red))))

   `(w3m-session-select
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(w3m-session-selected
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :bold t
                                   :underline t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :bold t
                                        :underline t))))

   `(w3m-tab-background
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(w3m-tab-selected-background
     ((,dimmedmonokai-class (:background ,dimmedmonokai-background
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-background
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(w3m-tab-mouse
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-yellow))))

   `(w3m-tab-selected
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-emphasis
                                   :bold t))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :bold t))))

   `(w3m-tab-unselected
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-foreground))))

   `(w3m-tab-selected-retrieving
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-red))))

   `(w3m-tab-unselected-retrieving
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-orange))))

   `(w3m-tab-unselected-unseen
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :foreground ,dimmedmonokai-256-violet))))

   ;; web-mode
   `(web-mode-builtin-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(web-mode-comment-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(web-mode-constant-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(web-mode-current-element-highlight-face
     ((,dimmedmonokai-class (:underline unspecified
                                  :weight unspecified
                                  :background ,dimmedmonokai-highlight-line))
      (,dimmedmonokai-256-class  (:underline unspecified
                                       :weight unspecified
                                       :background ,dimmedmonokai-256-highlight-line))))

   `(web-mode-doctype-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :slant italic
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :slant italic
                                        :weight bold))))

   `(web-mode-folded-face
     ((,dimmedmonokai-class (:underline t))
      (,dimmedmonokai-256-class  (:underline t))))

   `(web-mode-function-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(web-mode-html-attr-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(web-mode-html-attr-custom-face
     ((,dimmedmonokai-class (:inherit web-mode-html-attr-name-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-html-attr-name-face))))

   `(web-mode-html-attr-engine-face
     ((,dimmedmonokai-class (:inherit web-mode-block-delimiter-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-block-delimiter-face))))

   `(web-mode-html-attr-equal-face
     ((,dimmedmonokai-class (:inherit web-mode-html-attr-name-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-html-attr-name-face))))

   `(web-mode-html-attr-value-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(web-mode-html-tag-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(web-mode-keyword-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(web-mode-preprocessor-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow
                                   :slant normal
                                   :weight unspecified))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow
                                        :slant normal
                                        :weight unspecified))))

   `(web-mode-string-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(web-mode-type-face
     ((,dimmedmonokai-class (:inherit font-lock-type-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-type-face))))

   `(web-mode-variable-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(web-mode-warning-face
     ((,dimmedmonokai-class (:inherit font-lock-warning-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-warning-face))))

   `(web-mode-block-face
     ((,dimmedmonokai-class (:background unspecified))
      (,dimmedmonokai-256-class  (:background unspecified))))

   `(web-mode-block-delimiter-face
     ((,dimmedmonokai-class (:inherit font-lock-preprocessor-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-preprocessor-face))))

   `(web-mode-block-comment-face
     ((,dimmedmonokai-class (:inherit web-mode-comment-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-comment-face))))

   `(web-mode-block-control-face
     ((,dimmedmonokai-class (:inherit font-lock-preprocessor-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-preprocessor-face))))

   `(web-mode-block-string-face
     ((,dimmedmonokai-class (:inherit web-mode-string-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-string-face))))

   `(web-mode-comment-keyword-face
     ((,dimmedmonokai-class (:box 1 :weight bold))
      (,dimmedmonokai-256-class  (:box 1 :weight bold))))

   `(web-mode-css-at-rule-face
     ((,dimmedmonokai-class (:inherit font-lock-constant-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-constant-face))))

   `(web-mode-css-pseudo-class-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face))))

   `(web-mode-css-color-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face))))

   `(web-mode-css-filter-face
     ((,dimmedmonokai-class (:inherit font-lock-function-name-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-function-name-face))))

   `(web-mode-css-function-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face))))

   `(web-mode-css-function-call-face
     ((,dimmedmonokai-class (:inherit font-lock-function-name-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-function-name-face))))

   `(web-mode-css-priority-face
     ((,dimmedmonokai-class (:inherit font-lock-builtin-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-builtin-face))))

   `(web-mode-css-property-name-face
     ((,dimmedmonokai-class (:inherit font-lock-variable-name-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-variable-name-face))))

   `(web-mode-css-selector-face
     ((,dimmedmonokai-class (:inherit font-lock-keyword-face))
      (,dimmedmonokai-256-class  (:inherit font-lock-keyword-face))))

   `(web-mode-css-string-face
     ((,dimmedmonokai-class (:inherit web-mode-string-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-string-face))))

   `(web-mode-javascript-string-face
     ((,dimmedmonokai-class (:inherit web-mode-string-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-string-face))))

   `(web-mode-json-comment-face
     ((,dimmedmonokai-class (:inherit web-mode-comment-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-comment-face))))

   `(web-mode-json-context-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(web-mode-json-key-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(web-mode-json-string-face
     ((,dimmedmonokai-class (:inherit web-mode-string-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-string-face))))

   `(web-mode-param-name-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(web-mode-part-comment-face
     ((,dimmedmonokai-class (:inherit web-mode-comment-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-comment-face))))

   `(web-mode-part-face
     ((,dimmedmonokai-class (:inherit web-mode-block-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-block-face))))

   `(web-mode-part-string-face
     ((,dimmedmonokai-class (:inherit web-mode-string-face))
      (,dimmedmonokai-256-class  (:inherit web-mode-string-face))))

   `(web-mode-symbol-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-violet))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-violet))))

   `(web-mode-whitespace-face
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red))))

   ;; whitespace-mode
   `(whitespace-space
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-comments
                                   :inverse-video unspecified
                                   :slant italic))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-comments
                                        :inverse-video unspecified
                                        :slant italic))))

   `(whitespace-hspace
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-emphasis
                                   :inverse-video unspecified))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-emphasis
                                        :inverse-video unspecified))))

   `(whitespace-tab
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-red
                                   :inverse-video unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-red
                                        :inverse-video unspecified
                                        :weight bold))))

   `(whitespace-newline
     ((,dimmedmonokai-class(:background unspecified
                                  :foreground ,dimmedmonokai-comments
                                  :inverse-video unspecified))
      (,dimmedmonokai-256-class (:background unspecified
                                       :foreground ,dimmedmonokai-256-comments
                                       :inverse-video unspecified))))

   `(whitespace-trailing
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-orange-lc
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-orange-lc
                                        :inverse-video t))))

   `(whitespace-line
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-magenta
                                   :inverse-video unspecified))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-magenta
                                        :inverse-video unspecified))))

   `(whitespace-space-before-tab
     ((,dimmedmonokai-class (:background ,dimmedmonokai-red-lc
                                   :foreground unspecified
                                   :inverse-video unspecified))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-red-lc
                                        :foreground unspecified
                                        :inverse-video unspecified))))

   `(whitespace-indentation
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-yellow
                                   :inverse-video unspecified
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-yellow
                                        :inverse-video unspecified
                                        :weight bold))))

   `(whitespace-empty
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-red-lc
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-red-lc
                                        :inverse-video t))))

   `(whitespace-space-after-tab
     ((,dimmedmonokai-class (:background unspecified
                                   :foreground ,dimmedmonokai-orange
                                   :inverse-video t
                                   :weight bold))
      (,dimmedmonokai-256-class  (:background unspecified
                                        :foreground ,dimmedmonokai-256-orange
                                        :inverse-video t
                                        :weight bold))))

   ;; wanderlust
   `(wl-highlight-folder-few-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(wl-highlight-folder-many-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(wl-highlight-folder-path-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-orange))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-orange))))

   `(wl-highlight-folder-unread-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-folder-zero-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(wl-highlight-folder-unknown-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-message-citation-header
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(wl-highlight-message-cited-text-1
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(wl-highlight-message-cited-text-2
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-cited-text-3
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-message-cited-text-4
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-message-header-contents-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-headers-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red))))

   `(wl-highlight-message-important-header-contents
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-header-contents
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-important-header-contents2
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-signature
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   `(wl-highlight-message-unimportant-header-contents
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(wl-highlight-summary-answedimmedmonokai-red-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-summary-disposed-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground
                                   :slant italic))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground
                                        :slant italic))))

   `(wl-highlight-summary-new-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-blue))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-blue))))

   `(wl-highlight-summary-normal-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(wl-highlight-summary-thread-top-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow))))

   `(wl-highlight-thread-indent-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-magenta))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-magenta))))

   `(wl-highlight-summary-refiled-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(wl-highlight-summary-displaying-face
     ((,dimmedmonokai-class (:underline t
                                  :weight bold))
      (,dimmedmonokai-256-class  (:underline t
                                       :weight bold))))

   ;; weechat
   `(weechat-error-face
     ((,dimmedmonokai-class (:inherit error))
      (,dimmedmonokai-256-class  (:inherit error))))

   `(weechat-highlight-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-emphasis
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-emphasis
                                        :weight bold))))

   `(weechat-nick-self-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight unspecified
                                   :inverse-video t))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight unspecified
                                        :inverse-video t))))

   `(weechat-prompt-face
     ((,dimmedmonokai-class (:inherit minibuffer-prompt))
      (,dimmedmonokai-256-class  (:inherit minibuffer-prompt))))

   `(weechat-time-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   ;; which-func-mode
   `(which-func
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   ;; which-key
   `(which-key-key-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green
                                        :weight bold))))

   `(which-key-separator-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(which-key-note-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments))))

   `(which-key-command-description-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-foreground))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-foreground))))

   `(which-key-local-map-description-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-yellow-hc))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-yellow-hc))))

   `(which-key-group-description-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-red
                                   :weight bold))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-red
                                        :weight bold))))
   ;; window-number-mode
   `(window-number-face
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-green))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-green))))

   ;; yascroll
   `(yascroll:thumb-text-area
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-comments))))

   `(yascroll:thumb-fringe
     ((,dimmedmonokai-class (:foreground ,dimmedmonokai-comments
                                   :background ,dimmedmonokai-comments))
      (,dimmedmonokai-256-class  (:foreground ,dimmedmonokai-256-comments
                                        :background ,dimmedmonokai-256-comments))))

   ;; zencoding
   `(zencoding-preview-input
     ((,dimmedmonokai-class (:background ,dimmedmonokai-highlight-line
                                   :box ,dimmedmonokai-emphasis))
      (,dimmedmonokai-256-class  (:background ,dimmedmonokai-256-highlight-line
                                        :box ,dimmedmonokai-256-emphasis)))))

  (custom-theme-set-variables
   'dimmedmonokai
   `(ansi-color-names-vector [,dimmedmonokai-background ,dimmedmonokai-red ,dimmedmonokai-green ,dimmedmonokai-yellow
                                                  ,dimmedmonokai-blue ,dimmedmonokai-magenta ,dimmedmonokai-cyan ,dimmedmonokai-foreground])

   ;; compilation
   `(compilation-message-face 'default)

   ;; fill-column-indicator
   `(fci-rule-color ,dimmedmonokai-highlight-line)

   ;; magit
   `(magit-diff-use-overlays nil)

   ;; highlight-changes
   `(highlight-changes-colors '(,dimmedmonokai-magenta ,dimmedmonokai-violet))

   ;; highlight-tail
   `(highlight-tail-colors
     '((,dimmedmonokai-highlight-line . 0)
       (,dimmedmonokai-green-lc . 20)
       (,dimmedmonokai-cyan-lc . 30)
       (,dimmedmonokai-blue-lc . 50)
       (,dimmedmonokai-yellow-lc . 60)
       (,dimmedmonokai-orange-lc . 70)
       (,dimmedmonokai-magenta-lc . 85)
       (,dimmedmonokai-highlight-line . 100)))

   ;; pos-tip
   `(pos-tip-foreground-color ,dimmedmonokai-background)
   `(pos-tip-background-color ,dimmedmonokai-green)

   ;; vc
   `(vc-annotate-color-map
     '((20 . ,dimmedmonokai-red)
       (40 . "#CF4F1F")
       (60 . "#C26C0F")
       (80 . ,dimmedmonokai-yellow)
       (100 . "#AB8C00")
       (120 . "#A18F00")
       (140 . "#989200")
       (160 . "#8E9500")
       (180 . ,dimmedmonokai-green)
       (200 . "#729A1E")
       (220 . "#609C3C")
       (240 . "#4E9D5B")
       (260 . "#3C9F79")
       (280 . ,dimmedmonokai-cyan)
       (300 . "#299BA6")
       (320 . "#2896B5")
       (340 . "#2790C3")
       (360 . ,dimmedmonokai-blue)))
   `(vc-annotate-very-old-color nil)
   `(vc-annotate-background nil)

   ;; weechat
   `(weechat-color-list
     (unspecified ,dimmedmonokai-background ,dimmedmonokai-highlight-line
                  ,dimmedmonokai-red-d ,dimmedmonokai-red
                  ,dimmedmonokai-green-d ,dimmedmonokai-green
                  ,dimmedmonokai-yellow-d ,dimmedmonokai-yellow
                  ,dimmedmonokai-blue-d ,dimmedmonokai-blue
                  ,dimmedmonokai-magenta-d ,dimmedmonokai-magenta
                  ,dimmedmonokai-cyan-d ,dimmedmonokai-cyan
                  ,dimmedmonokai-foreground ,dimmedmonokai-emphasis))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dimmedmonokai)

;; Local Variables:
;; no-byte-compile: t
;; fill-column: 95
;; End:

;;; dimmedmonokai-theme.el ends here
