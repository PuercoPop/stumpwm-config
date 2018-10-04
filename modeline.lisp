;;; modeline.lisp

;; Modeline settings
(setf *mode-line-timeout* 1) 
(setf *mode-line-border-width* 0) 
(setf *mode-line-background-color* *mode-line-bg-color*)
(setf *mode-line-foreground-color* *mode-line-fg-color*)

(setf *time-modeline-string* " ^5^f2^f1^n %a, %e %b ^1^f2^f1^n %H:%M")

;;;============================================================================
;; Battery

(defun battery-percentage (ml)
  (declare (ignore ml))
  (run-shell-command "cat /sys/class/power_supply/BAT0/capacity | tr -d '\\r\\n'" t))

(add-screen-mode-line-formatter #\B #'battery-percentage)

;;;============================================================================
;; Wifi

(defun get-signal-strength (ml)
  (declare (ignore ml))
  (string-trim
   (concat "." (string #\newline))
   (run-shell-command "awk 'NR==3{print $3}' /proc/net/wireless" t)))

(add-screen-mode-line-formatter #\I #'get-signal-strength)

;;;============================================================================
;; Volume


;;;============================================================================

;; Setup modeline
(setf *screen-mode-line-format*
      (list "^f1^5[%n]^n %W"
            "^>" ; right align
            "^2^f2^f1^n "
            "%B%"
            " ^6^f2^f1^n "
;            "%V"
            "^7^f2^f1 "
            "%I%"
            "%d"))

;; Turn on the mode line
(if (not (head-mode-line (current-head)))
    (toggle-mode-line (current-screen) (current-head)))

;;; modeline.lisp ends here