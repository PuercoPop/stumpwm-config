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

;; toggle gaps keybinding (Super + G)
(define-key *top-map* (kbd "s-g") "toggle-gaps")

;; prefix + return launches urxvt terminal
(define-key *root-map* (kbd "Return") "exec urxvt")

;;; keys.lisp ends here