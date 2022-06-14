;;  _    __           __                      ______            _____
;; | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
;; | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
;; | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ /
;; |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /
;;                               /____/                           /____/

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")


;; Font section
(setq doom-font (font-spec :family "Mononoki Nerd Font" :size 20)
      doom-variable-pitch-font (font-spec :family "Mononoki Nerd Font" :size 20))
;; Theme section
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; org directory changing
(setq org-directory "~/org/")

;; vim-like relative number view
(setq display-line-numbers-type 'relative)

;; transperency
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

;; open new buffer in new tab
;; (setq display-buffer-base-action '(display-buffer-in-tab))

;; vim-like number increasing
(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-visual-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)
(define-key evil-visual-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

;; enable beacon plugin
(beacon-mode 1)

;; neotree section
(add-to-list 'load-path "~/.doom.d/emacs-neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; (add-to-list 'load-path "~/.doom.d/vendor/emacs-powerline")
;; (require 'cl)
;; (require 'powerline)
;; (setq powerline-arrow-shape 'arrow)   ;; the default
