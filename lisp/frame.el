;; Alpha values
(defun alpha-active (alpha-num)
  "set frame parameter 'alpha for active frame"
  (interactive "nAlpha Active: ")
  (set-frame-parameter nil 'alpha (cons alpha-num (cdr (frame-parameter nil 'alpha )))))

(defun alpha-inactive (alpha-num)
  "set frame parameter 'alpha for inactive frame"
  (interactive "nAlpha Inactive: ")
  (set-frame-parameter nil 'alpha (cons (car (frame-parameter nil 'alpha )) alpha-num)))

(defun alpha-max ()
  "set frame parameter 'alpha to (100 . 100)."
  (interactive)
  (set-frame-parameter nil 'alpha-restore (frame-parameter nil 'alpha))
  (set-frame-parameter nil 'alpha '(100 . 100)))

(defun alpha-both (alpha-num)
  "set frame parameter 'alpha for both of active and inactive frames."
  (interactive "nAlpha Both: ")
  (set-frame-parameter nil 'alpha (list alpha-num (- alpha-num 15))))

(defun alpha-restore ()
  "set 'alpha to 'alpha-restore"
  (interactive)
  (set-frame-parameter nil 'alpha (frame-parameter nil 'alpha-restore)))

(defun left-fringe (width)
  "set frame parameter 'left-fringe for the current frame"
  (interactive "nleft-fringe: ")
  (set-frame-parameter nil 'left-fringe width))

(defun right-fringe (width)
  "set frame parameter 'right-fringe for the current frame"
  (interactive "nright-fringe: ")
  (set-frame-parameter nil 'right-fringe width))
