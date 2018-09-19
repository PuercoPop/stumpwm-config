;;; defs.lisp --- StumpWM commands

(defcommand restart-stump () ()
  "Hard Stumpwm restart"
  (run-commands "restart-hard"))

;; code modified from starting applications menu at:
;; https://github.com/stumpwm/stumpwm/wiki/TipsAndTricks
(defcommand app-menu () ()
  "Show the application menu"
  (labels ((pick (options)
                 (let ((selection (stumpwm::select-from-menu (current-screen) options nil 0)))
                   (cond
                    ((null selection)
                     (throw 'stumpwm::error "Aborted"))
                    ((stringp (second selection))
                     (second selection))
                    (t
                     (pick (cdr selection)))))))
    (let ((choice (pick *app-menu*)))
      ;; If a command can be found, which name is "choice", run this command,
      ;; otherwise regard "choice" as a shell command.
      (if (find choice (all-commands) :test #'equal)
          (run-commands choice)
        (run-shell-command choice)))))

;; code modified from safe quit command at:
;; https://github.com/stumpwm/stumpwm/wiki/TipsAndTricks
(defcommand safe-logout () ()
  "Checks if any windows are open before logging out"
  (let ((win-count 0))

    ;; Count the windows in each group
    (dolist (group (screen-groups (current-screen)))
      (setq win-count (+ (length (group-windows group)) win-count)))

    ;; Display the number of open windows or log out
    (if (= win-count 0)
        (run-commands "quit")
      (message (format nil "You have ~d ~a open! Please close before logging out." win-count
                       (if (= win-count 1) "window" "windows"))))))

(defcommand safe-shutdown () ()
  "Checks if any windows are open before shutting down"
  (let ((win-count 0))

    ;; Count the windows in each group
    (dolist (group (screen-groups (current-screen)))
      (setq win-count (+ (length (group-windows group)) win-count)))

    ;; Display the number of open windows or shutdown
    (if (= win-count 0)
        (run-commands "exec systemctl poweroff")
      (message (format nil "You have ~d ~a open! Please close before shutting down." win-count
                       (if (= win-count 1) "window" "windows"))))))

(defcommand safe-reboot () ()
  "Checks if any windows are open before shutting down"
  (let ((win-count 0))

    ;; Count the windows in each group
    (dolist (group (screen-groups (current-screen)))
      (setq win-count (+ (length (group-windows group)) win-count)))

    ;; Display the number of open windows or shutdown
    (if (= win-count 0)
        (run-commands "exec systemctl reboot")
      (message (format nil "You have ~d ~a open! Please close before rebooting." win-count
                       (if (= win-count 1) "window" "windows"))))))

;;; defs.lisp ends here
