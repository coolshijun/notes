## custom parameters
```
(shell :variables
             shell-default-shell 'term
             shell-default-term-shell "/usr/local/bin/fish")
```

## global enable line number

dotspacemacs-line-numbers t

## set python default shell to ipython
## in user init.el file

```
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))
```
