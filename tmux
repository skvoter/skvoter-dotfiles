bind -n M-r source-file ~/.config/tmux/tmux.conf
# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

######################
### DESIGN CHANGES ###
######################

# status line
set -g status-bg default
set -g status-fg black
set -g status-interval 2
setw -g window-status-format "#[bg=default]#[fg=black] #W "
setw -g window-status-current-format "#[bg=default]#[fg=black] #W "
setw -g window-status-current-attr dim
set -g status-position bottom
set -g status-left ' '
set -g status-right ' '


# Disable split borders
set -g pane-border-fg black
set -g pane-active-border-fg black
set -g pane-active-border-bg default
