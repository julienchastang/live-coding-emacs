;; Place personal bindings here

(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "M-[ 5 d")
       'paredit-forward-slurp-sexp)
     (define-key paredit-mode-map (kbd "M-[ 5 c")
       'paredit-forward-barf-sexp)))
