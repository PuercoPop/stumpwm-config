;;; modeline.lisp

;; modeline settings
(setf *mode-line-timeout* 1) 
(setf *mode-line-border-width* 0) 
(setf *mode-line-background-color* *mode-line-bg-color*)
(setf *mode-line-foreground-color* *mode-line-fg-color*)

(setf *time-modeline-string* "%a, %e %b ^1^f2^f1^n %H:%M")

(defun battery-percentage ()
  (run-shell-command "cat /sys/class/power_supply/BAT0/capacity | tr -d '\\r\\n'" t))

;; setup modeline
(setf *screen-mode-line-format*
      (list "^f1^5[%n]^n %W"
            "^>" ; right align
            "^2^f2^f1^n "
            '(:eval (battery-percentage)) "%"
            " ^6^f2^f1^n "
            " ^5^f2^f1^n "
            "%d"))

;; turn on the mode line
(if (not (head-mode-line (current-head)))
    (toggle-mode-line (current-screen) (current-head)))

;;; modeline.lisp ends here