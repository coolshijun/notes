# VIM Shortcuts

## Tree View (netrw)
:Explore or :Ex Open the netrw
:Sexplore or :Sex Open the netrw in horizontal split
:Vexplore or :Vex Open the netrw in vertical split
:Rexplore or :Rex Back to the Explorer

i   Cycle between thin, long, wide, and tree listing
o   Open file 
C-o Back to the tree
C-^ Back and forth
t   Open file in new tab
a   Toggles between normal display
-   Go up one directory

## Execute command directly by :!
:! ls -la
:find path/fo/file.txt
:vs path/to/file.txt
:sp path/to/file.txt
:tabnew path/to/file.txt

## Tab
gt  switch to nex tab
gT  switch to previous tab
1gt switch to tab 1
2gt switch to tab 2
:tabclose close current tab
:tabclose {i} close i-th tab
:tabonly  close all other tabs
:tabedit {file} edit file in new tab
:tabfind {file} open a new tab 

:tabs   List all tabs
:tabm 0 Move current tab to first
:tabm   Move current tab to last
:tabm {i} Move current tab to position i+1

:tabn   next tab
:tabp   previous tab
:tabfirst first tab
:tablast  last tab
