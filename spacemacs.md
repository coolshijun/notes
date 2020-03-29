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

(setq eclim-eclipse-dirs '("/Applications/Eclipse.app/Contents/Eclipse")
      eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/plugins/org.eclim_2.8.0/bin/eclim"
      eclimd-default-workspace "/Users/simon/Development/eclipse")

(setq multi-term-program "/usr/local/bin/fish")
(setq explicit-shell-file-name "/usr/local/bin/fish")
```
