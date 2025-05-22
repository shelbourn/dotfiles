if status is-interactive
    # Commands to run in interactive sessions can go here
end

kubectl completion fish | source
pyenv init - | source

# sets env variable for local Hippo with Kafka
set -gx CODE_PATH /Users/matthew.shelbourn/Projects/Elation

# Sets the auto-complete font color
set -g fish_color_autosuggestion c6c8cc

# I use the Harleen Fish shell prompt theme
# $ omf install harleen
# https://github.com/aneveux/theme-harleen

# theming
set -g theme_nerd_fonts yes
set -g theme_color_scheme zenburn
set -g theme_display_git_default_branch yes
set -g theme_display_hostname yes

# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
