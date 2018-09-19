;;; apps-menu.lisp

;;; Code

(defparameter *app-menu* '(("^f2^f0 Audio/Video"
                            ("MOC" "urxvt -e mocp")
                            ("VLC" "vlc")
                            ("Alsa-Mixer" "urxvt -rv -e alsamixer")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 Chat"
                            ("HexChat" "hexchat")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 File Manager"
                            ("PCManFM" "pcmanfm")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 Internet"
                            ("Firefox" "firefox")
                            ("Transmission" "transmission-gtk")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 Games"
                            ("Solitaire" "sol")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 Graphics"
                            ("Inkscape" "inkscape")
                            ("GIMP" "gimp")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 Office Applications"
                            ("GNU Emacs" "emacs")
                            ("Libre Office" "libreoffice")
                            ("Libre Office Writer" "libreoffice --writer")
                            ("Libre Office Calc" "libreoffice --calc")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 System Tools"
                            ("Gnome Disk Utility" "gnome-disks")
                            ("Htop" "urxvt -e htop")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))
                           ("^f2^f0 System Options"
                            ("^f2^f0 Restart Stumpwm" "restart-stump")
                            ("^f2^f0 Logout Stumpwm" "safe-logout")
			    ("^f2^f0 Reboot Computer" "safe-reboot")
                            ("^f2^f0 Shutdown Computer" "safe-shutdown")
                            ("^B^4^f2^f0 back to main menu" "app-menu"))))

;;; apps-menu.lisp ends here