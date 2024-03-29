## key bindings

### toggle pop shell
SPC '

### toggle treemacs
SPC p t

SPC f t

### treemacs go to upper dir
⌥ + SHIFT + H 

### treemacs drill down to dir
⌥ + SHIFT + L

### switch to treemacs
SPC w w

SPC 0

### jump to another file
SPC f j




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

```
SPC s c remove highlight

**** Files manipulations key bindings
Files manipulation commands (start with ~f~):

| Key Binding | Description                                                    |
|-------------+----------------------------------------------------------------|
| ~SPC f c~   | copy current file to a different location                      |
| ~SPC f C d~ | convert file from unix to dos encoding                         |
| ~SPC f C u~ | convert file from dos to unix encoding                         |
| ~SPC f D~   | delete a file and the associated buffer (ask for confirmation) |
| ~SPC f E~   | open a file with elevated privileges (sudo edit)               |
| ~SPC f f~   | open file with =helm= (or =ido=)                               |
| ~SPC f F~   | try to open the file under point =helm=                        |
| ~SPC f j~   | jump to the current buffer file in dired                       |
| ~SPC f l~   | open file literally in =fundamental mode=                      |
| ~SPC f L~   | Locate a file (using =locate=)                                 |
| ~SPC f o~   | open a file using the default external program                 |
| ~SPC f R~   | rename the current file                                        |
| ~SPC f s~   | save a file                                                    |
| ~SPC f S~   | save all files                                                 |
| ~SPC f r~   | open a recent file with =helm=                                 |
| ~SPC f t~   | toggle file tree side bar using [[https://github.com/jaypei/emacs-neotree][NeoTree]]                        |
| ~SPC f v d~ | add a directory variable                                       |
| ~SPC f v f~ | add a local variable to the current file                       |
| ~SPC f v p~ | add a local variable to the first line of the current file     |
| ~SPC f y~   | show current file absolute path in the minibuffer              |

**** Emacs and Spacemacs files
Convenient key bindings are located under the prefix ~SPC f e~ to quickly
navigate between =Emacs= and Spacemacs specific files.

| Key Binding | Description                                                        |
|-------------+--------------------------------------------------------------------|
| ~SPC f e c~ | open =ido= in the =contrib= folder                                 |
| ~SPC f e d~ | open the spacemacs dotfile (=~/.spacemacs=)                        |
| ~SPC f e D~ | open =ediff= buffer of =~/.spacemacs= and =.spacemacs.template=    |
| ~SPC f e f~ | discover the =FAQ= using =helm=                                    |
| ~SPC f e i~ | open the all mighty =init.el=                                      |
| ~SPC f e R~ | resync the dotfile with spacemacs                                  |
| ~SPC f e v~ | display and copy the spacemacs version                             |


--
## Comment
SPC ;	comment operator
SPC c y	comment and yank
SPC c p	comment paragraphs

--
## Find files
SPC ff: find files or url
SPC pf: find file in project
SPC ph: search in a project with helm
SPC bb: search in buffers

--
## Search in files
SPC ss
/: search with evil

--
## Window
SPC w =	balance split windows
SPC w c	close a window
SPC w c	close a window
SPC w C	delete another window using ace-delete-window
SPC w d	toggle window dedication (dedicated window cannot be reused by a mode)
SPC w [hjkl] move to window
SPC w [HJKL] move the window
SPC w s or SPC w -	horizontal split
SPC w S	horizontal split and focus new window
SPC w u	undo window layout (used to effectively undo a closed window)
SPC w U	redo window layout
SPC w v or SPC w /	vertical split
SPC w V	vertical split and focus new window
SPC w w	cycle and focus between windows
SPC w m	maximize/minimize a window (maximize is equivalent to delete other windows)
SPC w M	maximize/minimize a window, when maximized the buffer is centered

--
## buffer
SPC TAB	switch to alternate buffer in the current window (switch back and forth)
SPC b b	switch to a buffer using helm
SPC b d	kill the current buffer (does not delete the visited file)
SPC b e	erase the content of the buffer (ask for confirmation)
SPC b h	open *spacemacs* home buffer
SPC b k	kill a buffer
SPC b K	kill all buffers except the current one

--
## Project
=projectile= commands start with p:

| Key Binding | Description                                           |
|-------------+-------------------------------------------------------|
| ~SPC p !~   | run shell command in root                             |
| ~SPC p &~   | run async shell command in root                       |
| ~SPC p a~   | toggle between implementation and test                |
| ~SPC p b~   | switch to project buffer                              |
| ~SPC p c~   | compile project using =projectile=                    |
| ~SPC p d~   | find directory                                        |
| ~SPC p D~   | open project root in =dired=                          |
| ~SPC p f~   | find file                                             |
| ~SPC p G~   | regenerate the project's =etags= / =gtags=            |
| ~SPC p h~   | find file using =helm=                                |
| ~SPC p I~   | invalidate the projectile cache                       |
| ~SPC p k~   | kill all project buffers                              |
| ~SPC p o~   | run =multi-occur=                                     |
| ~SPC p p~   | switch project                                        |
| ~SPC p r~   | open a recent file                                    |
| ~SPC p R~   | replace a string                                      |
| ~SPC p s~   | see [[Searching in a project][search in project]]                                 |
| ~SPC p t~   | open =NeoTree= in =projectile= root                   |
| ~SPC p T~   | find test files                                       |
| ~SPC p v~   | open project root in =vc-dir= or =magit=              |
| ~SPC p y~   | find tags                                             |
| ~SPC /~     | search in project with the best search tool available |
| ~SPC s a p~ | run =ag=                                              |
| ~SPC s g p~ | run =grep=                                            |
| ~SPC s k p~ | run =ack=                                             |
| ~SPC s t p~ | run =pt=                                              |

--
## errors
SPC e n	go to the next error
SPC e p	go to the previous error

--
## Quit
SPC q q	Quit Emacs and kill the server, prompt for changed buffers to save
SPC q Q	Quit Emacs and kill the server, lose all unsaved changes.
SPC q r	Restart both Emacs and the server, prompting to save any changed buffers
SPC q s	Save the buffers, quit Emacs and kill the server
SPC q z	Kill the current frame
--
## Ruby on rails

| Key binding   | Description                                                     |
|---------------+-----------------------------------------------------------------|
| ~SPC m r f a~ | find localization file                                          |
| ~SPC m r f c~ | find controller                                                 |
| ~SPC m r f e~ | find environment file                                           |
| ~SPC m r f f~ | find feature                                                    |
| ~SPC m r f h~ | find helper                                                     |
| ~SPC m r f i~ | find initializer                                                |
| ~SPC m r f j~ | find javascript file                                            |
| ~SPC m r f l~ | find library                                                    |
| ~SPC m r f m~ | find model                                                      |
| ~SPC m r f n~ | find migration                                                  |
| ~SPC m r f o~ | find log                                                        |
| ~SPC m r f p~ | find spec file                                                  |
| ~SPC m r f r~ | find rake task                                                  |
| ~SPC m r f s~ | find stylesheet file                                            |
| ~SPC m r f t~ | find test                                                       |
| ~SPC m r f u~ | find fixture                                                    |
| ~SPC m r f v~ | find view                                                       |
| ~SPC m r f y~ | find layout                                                     |
| ~SPC m r f @~ | find mailer                                                     |
| ~SPC m r g c~ | go to current controller                                        |
| ~SPC m r g d~ | go to DB schema                                                 |
| ~SPC m r g e~ | go to DB seeds                                                  |
| ~SPC m r g h~ | go to current helper                                            |
| ~SPC m r g j~ | go to current javascript                                        |
| ~SPC m r g g~ | go to Gemfile                                                   |
| ~SPC m r g m~ | go to current model                                             |
| ~SPC m r g n~ | go to current migration                                         |
| ~SPC m r g p~ | go to current spec                                              |
| ~SPC m r g r~ | go to routes                                                    |
| ~SPC m r g s~ | go to current stylesheet                                        |
| ~SPC m r g t~ | go to current test                                              |
| ~SPC m r g u~ | go to current fixture                                           |
| ~SPC m r g v~ | go to current view                                              |
| ~SPC m r g z~ | go to spec helper                                               |
| ~SPC m r g .~ | go to file at point (faster but less powerful than ~SPC m g g~) |

** Refactoring

| Key binding   | Description                 |
|---------------+-----------------------------|
| ~SPC m r R x~ | extract region into partial |

** RUN commands

| Key binding   | Description          |
|---------------+----------------------|
| ~SPC m r :~   | run rake task        |
| ~SPC m r c c~ | run rails generator  |
| ~SPC m r i~   | start rails console  |
| ~SPC m r s r~ | reload Rails project |
| ~SPC m r x s~ | start rails server   |

** Ex-commands

| Key binding | Description                             |
|-------------+-----------------------------------------|
| ~:A~        | Switch between implementation and tests |

--

# Ruby

* Key bindings
** Ruby (enh-ruby-mode, robe, inf-ruby, ruby-tools)

| Key binding | Description                                          |
|-------------+------------------------------------------------------|
| ~SPC m '~   | toggle quotes of current string (only built-in mode) |
| ~SPC m {~   | toggle style of current block (only built-in mode)   |
| ~SPC m g g~ | go to definition (robe-jump)                         |
| ~SPC m h d~ | go to Documentation                                  |
| ~SPC m s f~ | send function definition                             |
| ~SPC m s F~ | send function definition and switch to REPL          |
| ~SPC m s i~ | start REPL                                           |
| ~SPC m s r~ | send region                                          |
| ~SPC m s R~ | send region and switch to REPL                       |
| ~SPC m s s~ | switch to REPL                                       |
| ~SPC m x '~ | Change symbol or " string to '                       |
| ~SPC m x "~ | Change symbol or ' string to "                       |
| ~SPC m x :~ | Change string to symbol                              |
| ~%~         | [[https://github.com/redguardtoo/evil-matchit][evil-matchit]] jumps between blocks                    |

** RuboCop

| Key binding   | Description                                          |
|---------------+------------------------------------------------------|
| ~SPC m r r f~ | Runs RuboCop on the currently visited file           |
| ~SPC m r r F~ | Runs auto-correct on the currently visited file      |
| ~SPC m r r d~ | Prompts from a directory on which to run RuboCop     |
| ~SPC m r r D~ | Prompts for a directory on which to run auto-correct |
| ~SPC m r r p~ | Runs RuboCop on the entire project                   |
| ~SPC m r r P~ | Runs auto-correct on the project                     |

** Tests
*** RSpec-mode
When =ruby-test-runner= equals =rspec=.

| Key binding | Description                                   |
|-------------+-----------------------------------------------|
| ~SPC m t a~ | run all specs                                 |
| ~SPC m t b~ | run current spec file                         |
| ~SPC m t c~ | run the current spec file and subsequent ones |
| ~SPC m t e~ | mark example as pending                       |
| ~SPC m t f~ | run method                                    |
| ~SPC m t l~ | run last failed spec                          |
| ~SPC m t m~ | run specs related to the current buffer       |
| ~SPC m t r~ | re-run last spec                              |
| ~SPC m t t~ | run spec at pointer                           |

*** Ruby-test-mode
When =ruby-test-runner= equals =ruby-test=.

| Key binding | Description         |
|-------------+---------------------|
| ~SPC m t b~ | run test file       |
| ~SPC m t t~ | run test at pointer |


Git commands (start with ~g~):

| Key Binding | Description                                         |
|-------------+-----------------------------------------------------|
| ~SPC g b~   | open a =magit= blame                                |
| ~SPC g B~   | quit =magit= blame                                  |
| ~SPC g c~   | commit changes                                      |
| ~SPC g C~   | checkout branches                                   |
| ~SPC g d~   | show diff prompt                                    |
| ~SPC g D~   | show diff against current head                      |
| ~SPC g e~   | show ediff comparison                               |
| ~SPC g E~   | show ediff against current head                     |
| ~SPC g f~   | show fetch prompt                                   |
| ~SPC g F~   | show pull prompt                                    |
| ~SPC g H c~ | clear highlights                                    |
| ~SPC g H h~ | highlight regions by age of commits                 |
| ~SPC g H t~ | highlight regions by last updated time              |
| ~SPC g i~   | git init a given directory                          |
| ~SPC g I~   | open =helm-gitignore=                               |
| ~SPC g l~   | open a =magit= log                                  |
| ~SPC g L~   | display the log for a file                          |
| ~SPC g P~   | show push prompt                                    |
| ~SPC g s~   | open a =magit= status window                        |
| ~SPC g S~   | stage current file                                  |
| ~SPC g m~   | display the last commit message of the current line |
| ~SPC g t~   | launch the git time machine                         |
| ~SPC g U~   | unstage current file                                |
```
