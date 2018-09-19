;;; keys.lisp --- My keybindings for StumpWM

;; set prefix key
(set-prefix-key (kbd "C-z"))

;; cycle forward and back through groups
(define-key *root-map* (kbd ".") "gnext")
(define-key *root-map* (kbd ",") "gprev")
(define-key *top-map* (kbd "s-Up") "gnext")
(define-key *top-map* (kbd "s-Down") "gprev")

;; cycle through unsplit windows using Super key
(define-key *top-map* (kbd "s-Right") "pull-hidden-next")
(define-key *top-map* (kbd "s-Left") "pull-hidden-previous")

;; extra keybinding for exiting splitscreen
(define-key *root-map* (kbd "q") "only")

;; bind w to windowlist which is more usefull than windows
;; as it can be used as menu
(define-key *root-map* (kbd "w") "windowlist")

;; bind g to grouplist which is more usefull than groups (C-z g g)
;; as it can be used as menu
(define-key *root-map* (kbd "g") "grouplist")

;; toggle gaps keybinding (Super + g)
(define-key *top-map* (kbd "s-g") "toggle-gaps")

;; hard restart keybinding (Super + r)
(define-key *top-map* (kbd "s-r") "restart-stump")

;; Show Applications menu
(define-key *top-map* (kbd "s-m") "app-menu")

;; apps keybindings

;; prefix + return launches urxvt terminal
(define-key *root-map* (kbd "Return") "exec urxvt")

;; run or raise pcmanfm prefix + t
(defcommand pcmanfm () ()
  "Start Pcmanfm or switch to it, if it is already running."
  (run-or-raise "pcmanfm" '(:class "Pcmanfm")))
(define-key *root-map* (kbd "t") "pcmanfm")

;; run or raise Firefox with prefix + f
(defcommand firefox () ()
  "Start Firefox or switch to it, if it is already running."
  (run-or-raise "firefox" '(:class "Firefox")))
(define-key *root-map* (kbd "f") "firefox")

;;; keys.lisp ends here