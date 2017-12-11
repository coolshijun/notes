# tmux commands

tmux list-sessions or tmux ls

tmux new-session -s session-name or tmux new -s session-name

tmux attach [-t session-name] or tmux at

tmux rename-session session-name

tmux switch -t session-name

## window
prefix-c  Create window

prefix-,  Rename window

prefix-w  Menu with all windows

prefix-p  Previous window

prefix-n  Next window

prefix-[0..9] Switch to [0..9] window

prefix-&  Close current window


## pane
prefix-"  Split Vertically

prefix-%  Split Horizontally

prefix-x  Close current pane

C-d       Close current pane

prefix-z  Maximize current pane

prefix-o  switch pane

prefix-space  Change layout


vi ~/.tmux.conf
## Start windows and panes at 1, not 0

set -g base-index 1

setw -g pane-base-index 1
