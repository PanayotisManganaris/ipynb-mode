(defvar ipynb-mode-hook nil)

(defvar ipynb-mode-map
  "Keymap for ipynb major mode"
  (let ((map (make-keymap)))
    (define-key map "C-c C-c" 'show-raw-ipynb)
    map))

(add-to-list 'auto-mode-alist '("\\.ipynb\\'" . ipynb-mode))

;; parse a json for "markdown" cells and "code" cell_type.
;; ignore execution counts
;; maybe use metadata as tags
;; outputs
;; source -- pass to org mode representation

;; put inline displays (html tables, images, widgets, etc) in a dummy result block...

;; images will be a placeholder. real images will be displayed by org machinery when cell is run natively
;; widgets may or may not be handled by emacs jupyter
;; tables should be rendered as org tables... maybe if they're really big they should be truncated after a few rows and user should be warned


;; font-locking

(provide 'ipynb-mode)
