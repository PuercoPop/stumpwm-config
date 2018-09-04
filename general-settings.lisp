;;; general-settings.lisp

;; set font
(set-font (make-instance 'xft:font :family "FreeSans" :subfamily "Regular" :size 10))

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

;;; general-settings.lisp ends here