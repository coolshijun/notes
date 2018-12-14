# VIM Shortcuts

## Motion

h,j,k,l   Left, Down, Up, Right

^ Begin of line

$ End of line

w, W Next word(WORD)

b, B Previous word(WORD)

e, E end word(WORD)

( Begin sentence

) End sentence

{ Begin paragraph

} End paragraph

H Screen top

M Screen middle

L Screen bottom

Ctrl + f Page up

Ctrl + b Page down

Ctrl + e Scroll line up

Ctrl + y Scroll line down

zt  Scroll cursor to top

zb  Scroll cursor to bottom

zz  Scroll cursor to center

gg  Top of file

G   Bottom of file

- , + Previous line, Next line


## Search

/ find

? find rev.

n next find

N prev find

\# find prev identical

\* find next indetical

## Edit

d Delete

D Delete to eol

dd delete line

<< unintent line

>> indent line

x Delete char

X Backspace

y yank

Y yank line

p paste after

P paste before

J join lines

## Mode
i insert mode

I insert at bol

a append

A append at eol

c change

C change to eol

r replace char

R replace mode

s subst char

S subst line

o open below

O open above

v visual mode

V visual lines



## Options

:set list     show whitespace character

:set nolist or :set list!  hide whitespace character

:set nu       show line number

:set nu!      hide line number

## Copy & Paste

dd    cut current line

yy    copy current line

p     paste curret

v, use cursor to select range, y  copy range

p     paste clipboard

## Copy & Paste between different vim instances

Use ESC m a to mark first line

Use ESC m b to mark last line

Use :'a,'b w! temp to write out range to a temp file

In destination session, Use ESC :r temp to read in text


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

C-w w Switch between windows

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

or

:tabc

:tabclose {i} close i-th tab

:tabonly  close all other tabs

or

:tabo

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
