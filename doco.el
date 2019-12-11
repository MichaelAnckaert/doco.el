;;;; doco.el --- docker integration for emacs

;;;; Copyright 2019 Michael Anckaert <michael.anckaert@sinax.be>
;;;;
;;;; Author: Michael Anckaert
;;;; URL: https://github.com/MichaelAnckaert/doco.el
;;
;;; License: GPLv3
;;
;; Created: December 12, 2019
;; Package-Version: 0.0.1-SNAPSHOT
;; Keywords: tools, docker
;; Package-Requires: ((emacs "25.3")

(defconst doco-buffer-name "*doco-output*"
  "Name of the output buffer")

(defun doco-get-compose-file ()
  "/home/michael/projects/doco.el/django-sample-app/docker-compose.yml")

(defun doco-get-buffer-name ()
  "doco-output")

(defun doco-start-service ()
  (let ((compose-file (doco-get-compose-file)))
    (start-process "dcmp" doco-buffer-name "docker-compose" "-f" compose-file "up" "--no-color")))

(defun doco-stop-service ()
  (let ((compose-file (doco-get-compose-file)))
    (start-process "dcmp" doco-buffer-name "docker-compose" "-f" compose-file "stop")))

(doco-start-service)
(doco-stop-service)

