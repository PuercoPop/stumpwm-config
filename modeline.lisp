;;; modeline.lisp

;; modeline settings
(setf *mode-line-timeout* 1) 
(setf *mode-line-border-width* 0) 
(setf *mode-line-background-color* *mode-line-bg-color*)
(setf *mode-line-foreground-color* *mode-line-fg-color*)


(setf *time-modeline-string* "%a, %e %b ^B^1^f1^f0^n %H:%M")

;; setup modeline
(setf *screen-mode-line-format*
      (list "[^B%n^b] %W^>"
            "^B^5^f1^f0^n "
            "%d"))

;; turn on the mode line
(if (not (head-mode-line (current-head)))
    (toggle-mode-line (current-screen) (current-head)))

;;; modeline.lisp ends here