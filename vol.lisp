;;; vol.lisp --- Controlling StumpWM volume on Ubuntu 18.04

(defcommand volume-increase () ()
  "Increase Volume"
  (run-shell-command "pactl set-sink-volume 0 +5%"))

(defcommand volume-decrease () ()
  "Decrease Volume"
  (run-shell-command "pactl set-sink-volume 0 -5%"))

(defcommand toggle-mute () ()
  "Mute Volume"
  (run-shell-command "pactl set-sink-mute 0 toggle"))

;;; vol.lisp ends here