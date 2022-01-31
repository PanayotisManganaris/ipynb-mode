;; this file is not part of emacs

(defvar ipynb-mode-hook nil)

;; keybinding
(defvar ipynb-mode-map
  "Keymap for ipynb major mode"
  (let ((map (make-keymap)))
    (define-key map "C-c C-c" 'show-raw-ipynb)
    map))

;; autoload
(add-to-list 'auto-mode-alist '("\\.ipynb\\'" . ipynb-mode))

;; parse ipynb json

;; font-locking

;; provide
(provide 'ipynb-mode)
