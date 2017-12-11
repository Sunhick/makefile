;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil
  (eval visual-line-mode 1)
  (eval linum-mode 1))
 (c++-mode
  (eval add-hook 'c++-mode-hook 'my:flymake-google-init)))
