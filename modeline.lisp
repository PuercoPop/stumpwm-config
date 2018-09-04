;;; modeline.lisp

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

;;; modeline.lisp ends here