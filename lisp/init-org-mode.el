;;; init-org-mode.el --- Elisp helper functions and commands -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (setq org-latex-pdf-process
;;        '("xelatex -interaction nonstopmode -output-directory %o %f"
;; 	 "xelatex -interaction nonstopmode -output-directory %o %f"
;; 	 "xelatex -interaction nonstopmode -output-directory %o %f"))


;; latex settings
;; #+LATEX_HEADER: \usepackage{ctex}
;; #+LATEX_HEADER: \usepackage[margin=1in]{geometry}
;; #+LATEX_HEADER: \setmainfont{Microsoft YaHei}
;; #+LATEX_HEADER: \usepackage{indentfirst}
;; #+LATEX_HEADER: \setlength{\parindent}{2em}
;; #+LATEX_CLASS_OPTIONS: [a4paper]
;; #+LATEX_HEADER: \usepackage{minted}

;; #+latex: \newpage

(require 'ox-latex)
(setq org-latex-compiler "xelatex")
(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("xelatex -8bit -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -8bit -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-latex-minted-options
      '(
	("linenos=true")
	;;	("mathescape=true")
	;;        ("numbersep=5pt")
	;;        ("gobble=2")
	("frame=lines")
	;;        ("framesep=2mm")
	))

(setq org-src-fontify-natively 1);代码块语法高亮
(setq org-src-tab-acts-natively 1);开启代码块语法缩进
(setq org-edit-src-content-indentation 0);代码块初始缩进范围

(provide 'init-org-mode)

;;; init-org-mode.el ends here
