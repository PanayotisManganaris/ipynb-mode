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

;;; lesson learned from json.el:
;; the decoding/encoding should optimally manipulate a buffer rather
;; than a string.

;; Parameters

;; Error Conditions

;; parse ipynb json -- adapted from emacs's json.el json-pretty-print
(defun read-ipynb ()
  "Read the ipynb buffer contents using json-read-file and return alist object"
  (interactive "p")
  json-read-file(buffer-file-name))

;; font-locking

;; provide
(provide 'ipynb-mode)
