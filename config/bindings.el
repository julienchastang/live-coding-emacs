;; Place personal bindings here

;;;;;;; paredit customization

(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "M-[ 5 d")
       'paredit-forward-slurp-sexp)
     (define-key paredit-mode-map (kbd "M-[ 5 c")
       'paredit-forward-barf-sexp)))

;;;;;;; org mode customization

(setq org-todo-keywords
             '((sequence "➜" "✈" "|" "✔" )))

(setq org-todo-keyword-faces
      (quote (("➜" :foreground "red"       :weight bold)
	      ("✈" :foreground "goldenrod" :weight bold)
	      ("✔" :foreground "forest green"))))

(setq org-priority-faces
      '((?A . (:foreground "red"))
	(?B . (:foreground "#00BB00" ))
	(?C . (:foreground "blue" ))))
