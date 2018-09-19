;;; general-settings.lips

;; setup fonts
(set-font (list
           (make-instance 'xft:font :family "DejaVu Sans Mono" :subfamily "Bold" :size 11)
           (make-instance 'xft:font :family "DejaVu Sans" :subfamily "Bold" :size 9)
           (make-instance 'xft:font :family "FontAwesome" :subfamily "Regular" :size 10)))

;; setup groups
(grename "Base")
(gnewbg "Extra")
(gnewbg-float "Float")

;; windows settings
(setf *ignore-wm-inc-hints* t)
(setf *window-border-style* :thin)

;; messages settings time
(setf *timeout-wait* 7)
(setf *message-window-gravity* :center)

;; message input bar colors
(set-bg-color *msg-bg-color*)
(set-fg-color *msg-fg-color*)
(set-border-color *msg-border-color*)

;; input box settings
(setf *input-window-gravity* :center)
(set-msg-border-width 3)
(setf *message-window-padding* 3)

;; input focus is transferred to the window you click on
(setf *mouse-focus-policy* :click)

;; gaps settings
;; inner gaps run along all the 4 borders of a frame
(setf swm-gaps:*inner-gaps-size* 10)

;; outer gaps add more padding to the outermost borders
;; (touching the screen border)
(setf swm-gaps:*outer-gaps-size* 20)

;; Startup message
(setf *startup-message* "^5    Stump Window Manager ^0has initialized!
Press ^1Ctrl+z ? ^0for Help. ^5Never Stop Hacking!")

;;; general-settings.lisp ends here