;; Typeset LaTeX file
;;(setq tex-run-command "/Library/TeX/texbin/ptex2pdf -l -ot \"-synctex=1 -file-line-error\"")

;; (add-to-list 'default-frame-alist '(font . "-DAMA-Ubuntu Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1"))

(menu-bar-mode 0)

(defun latex2pdf (filename)
  (shell-command (concat
 		  "cd " (file-name-directory filename) " && "
 		  "ptex2pdf -l -ot \"-synctex=1 -file-line-error\" "
 		  (file-name-nondirectory filename)
		  ;;		  " > /dev/null 2>&1")))
		  " &> /dev/null")))

(defun latex2pdf-current-buffer ()
  (interactive)
  (save-buffer)
  (latex2pdf (buffer-file-name)))

(defun latex2pdf-open-pdf ()
  (interactive)
  (shell-command (concat
		  "{ evince "
 		  (file-name-base (buffer-file-name))
		  ".pdf & } > /dev/null 2>&1")))

(setq latex-mode-hook
      (function
       (lambda ()
	 (progn
	   (define-key latex-mode-map (kbd "<muhenkan>") 'latex2pdf-current-buffer)
	   ;; (define-key latex-mode-map (kbd "C-s-t") 'latex2pdf-current-buffer)
	   (define-key latex-mode-map (kbd "<henkan>") 'latex2pdf-open-pdf)
	   ;; (define-key latex-mode-map (kbd "C-s-o") 'latex2pdf-open-pdf)
	   ))))
