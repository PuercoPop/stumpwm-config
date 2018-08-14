;;; -*- Mode: Lisp -*-

;; .stumpwmrc - StumpWM configuration file

;; Copyright © 2018 James McCabe <james.mccab3@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file is my personal StumpWM configuration.
;; It works with StumpWM 1.0.0, sbcl 1.3.1 debian on Ubuntu 16.04 LTS.
;; See manual at: https://stumpwm.github.io/1.0.0/stumpwm-1.0.0.pdf

;;; Code:

(in-package :stumpwm)

(set-module-dir "/home/jmccabe/stumpwm-contrib/")

;; load modules
(mapcar #'load-module '("ttf-fonts"
                        "swm-gaps"))
;; set prefix key
(set-prefix-key (kbd "C-z"))

;; set font
(set-font (make-instance 'xft:font :family "FreeSans" :subfamily "Regular" :size 10))

;; modeline settings
(setf *mode-line-timeout* 10) 
(setf *mode-line-border-width* 0) 
(setf *mode-line-background-color* "#333333")
(setf *mode-line-foreground-color* "#ebdbb2")

;; setup modeline
(setf *screen-mode-line-format*
      (list "[^B%n^b] %W^>"
            "^B^2//^n "
            "%d"))

;; turn on the mode line
(if (not (head-mode-line (current-head)))
    (toggle-mode-line (current-screen) (current-head)))

;; windows settings
(setf *ignore-wm-inc-hints* t)
(setf *window-border-style* :thin)

;; messages settings time
(setf *timeout-wait* 7)
(setf *message-window-gravity* :center)

;; input box settings
(setf *input-window-gravity* :center)

;; input focus is transferred to the window you click on
(setf *mouse-focus-policy* :click)

;;; toggle gaps
;; Inner gaps run along all the 4 borders of a frame
(setf swm-gaps:*inner-gaps-size* 10)

;; Outer gaps add more padding to the outermost borders
;; (touching the screen border)
(setf swm-gaps:*outer-gaps-size* 20)

(define-key *top-map* (kbd "s-g") "toggle-gaps")

;;; .stumpwmrc ends here