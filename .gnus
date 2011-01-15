(setq user-full-name "Harold Pimentel")
(setq user-mail-address "haroldpimentel@gmail.com")

;; Set Gmail as primary
;; (setq gnus-select-method '(nnimap "gmail"
;;                                   (nnimap-address "imap.gmail.com")
;;                                   (nnimap-server-port 993)
;;                                   (nnimap-stream ssl)) )

(setq gnus-select-method 
      '(nnmaildir "GMailTest" 
                  (directory "~/.mail/gmail")
                  (directory-files nnheader-directory-files-safe)
                  (get-new-mail nil)))

(setq gnus-message-archive-group "sent")

(define-key gnus-group-mode-map (kbd "vo")
  '(lambda ()
     (interactive)
     (shell-command "offlineimap&" "*offlineimap*" nil)))

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "haroldpimentel@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\”]\”[#’()]")

;; Make topic mode always active
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

(defun hp-message-mode-setup ()
  (setq fill-column 80)
  (turn-on-auto-fill)
  (whitespace-mode))
(add-hook 'message-mode-hook 'hp-message-mode-setup)
