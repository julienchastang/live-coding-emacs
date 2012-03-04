;; Place personal bindings here

;;;;;;; paredit customization

(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "M-[ 5 d")
       'paredit-forward-slurp-sexp)
     (define-key paredit-mode-map (kbd "M-[ 5 c")
       'paredit-forward-barf-sexp)))


;; ParEdit and SLIME REPL

(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
                (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

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


;;;;;;; ClojureScript Customization

(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
