;;; init.lisp --- Stumpwm Configuration

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
;; It works with StumpWM 18.05, sbcl 1.4.5.debian on Ubuntu 18.04 LTS.
;; See manual at: https://stumpwm.github.io/git/stumpwm-git.pdf

;;; Code:

(in-package :stumpwm)

;; load modules
(mapc #'load-module '("ttf-fonts"
                      "swm-gaps"))

(defun load-conf-files (conf-filenames)
  "Function to load a list of lisp files"
  (load (merge-pathnames (concat conf-filenames ".lisp") *load-truename*)))


;; load the rest of the config files
(mapc #'load-conf-files '("colors"
                          "general-settings"
                          "modeline"
                          "keys"))

;;; init.lisp ends here