;;; vol.lisp --- Controlling StumpWM volume on Ubuntu 18.04

(setf *max-vol* 100)

(defcommand volume-increase () ()
  "Increase volume but not over 100%"
  (setf *volume-check* (run-shell-command "pactl list sinks | grep -i volume | head -n1 | awk '{print $5}' | tr -d '\\r\\n'" t))
  (if (>= (parse-integer *volume-check* :junk-allowed t) *max-vol*)
      (message "Volume is at Maximum 100%!")
    (run-shell-command "pactl set-sink-volume 0 +5%")))

(defcommand volume-decrease () ()
  "Decrease volume"
  (run-shell-command "pactl set-sink-volume 0 -5%"))

(defcommand toggle-mute () ()
  "Mute volume"
  (run-shell-command "pactl set-sink-mute 0 toggle"))

;;; vol.lisp ends here