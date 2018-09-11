;;; keys.lisp --- My keybindings for StumpWM

;; set prefix key
(set-prefix-key (kbd "C-z"))

;; cycle forward and back through groups
(define-key *root-map* (kbd ".") "gnext")
(define-key *root-map* (kbd ",") "gprev")
(define-key *top-map* (kbd "s-Up") "gnext")
(define-key *top-map* (kbd "s-Down") "gprev")

;; toggle gaps keybinding
(define-key *top-map* (kbd "s-g") "toggle-gaps")

;;; keys.lisp ends here