if status is-interactive
    # Commands to run in interactive sessions can go here
end

pyenv init - | source

# Sets the auto-complete font color
set -g fish_color_autosuggestion 92dd94

# theming
set -g theme_nerd_fonts yes
set -g theme_color_scheme zenburn
set -g theme_display_git_default_branch yes
set -g theme_display_hostname yes
