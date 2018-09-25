;;; colors.lisp --- StumpWM colors

(defparameter *mode-line-bg-color* "#333333")
(defparameter *mode-line-fg-color* "#ebdbb2")

(defparameter *msg-bg-color* "#1d2021")
(defparameter *msg-fg-color* "#ffffff")
(defparameter *msg-border-color* "#cc241d")

(setf *colors*
      '("#ffffff"       ; ^0
       "#cc241d"        ; ^1
       "Yellow4"        ; ^2
       "PaleVioletRed4" ; ^3
       "DarkSlateGray4" ; ^4
       "#fabd2f"        ; ^5
       "SeaGreen"       ; ^6
       "gray86"         ; ^7
       "Blue"           ; ^8
       "Black"))        ; ^9

(update-color-map (current-screen))

;;; colors.lisp ends here