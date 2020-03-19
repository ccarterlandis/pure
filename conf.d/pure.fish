set --global pure_version 2.5.2 # used for bug report

# Base colors
_pure_set_default pure_color_primary blue
_pure_set_default pure_color_info brblack
_pure_set_default pure_color_mute white
_pure_set_default pure_color_success green
_pure_set_default pure_color_normal normal
_pure_set_default pure_color_danger red
_pure_set_default pure_color_light white
_pure_set_default pure_color_warning yellow
_pure_set_default pure_color_dark black

# Prompt
_pure_set_default pure_symbol_prompt "∫"
_pure_set_default pure_symbol_reverse_prompt "λ"
_pure_set_default pure_color_prompt_on_error pure_color_danger
_pure_set_default pure_color_prompt_on_success pure_color_success

# Current Working Directory
_pure_set_default pure_color_current_directory pure_color_primary

# Git
_pure_set_default pure_enable_git true
_pure_set_default pure_symbol_git_unpulled_commits "ahead"
_pure_set_default pure_symbol_git_unpushed_commits "behind"
_pure_set_default pure_symbol_git_dirty "dirty"
_pure_set_default pure_symbol_git_clean "clean"
_pure_set_default pure_color_git_unpulled_commits pure_color_warning
_pure_set_default pure_color_git_unpushed_commits magenta
_pure_set_default pure_color_git_branch cyan
_pure_set_default pure_color_git_dirty pure_color_danger
_pure_set_default pure_color_git_clean pure_color_success

# SSH info
_pure_set_default pure_color_ssh_hostname white
_pure_set_default pure_color_ssh_separator orange
_pure_set_default pure_color_ssh_user_normal red
_pure_set_default pure_color_ssh_user_root magenta

# Number of running jobs
_pure_set_default pure_show_jobs false
_pure_set_default pure_color_jobs pure_color_normal

# Virtualenv for Python
_pure_set_default pure_color_virtualenv yellow

# Print current working directory at the beginning of prompt
# true (default):   current directory, git, user@hostname (ssh-only), command duration
# false:            user@hostname (ssh-only), current directory, git, command duration
_pure_set_default pure_begin_prompt_with_current_directory false

# Show exit code of last command as a separate prompt character (cf. https://github.com/sindresorhus/pure/wiki#show-exit-code-of-last-command-as-a-separate-prompt-character)
# false - single prompt character, default
# true - separate prompt character
_pure_set_default pure_separate_prompt_on_error false

# Max execution time of a process before its run time is shown when it exits
_pure_set_default pure_threshold_command_duration 2
_pure_set_default pure_color_command_duration pure_color_normal

# VI mode indicator
# true (default):  indicate a non-insert mode by reversing the prompt symbol (❮)
# false:           indicate vi mode with [I], [N], [V]
_pure_set_default pure_reverse_prompt_symbol_in_vimode true

# Title
_pure_set_default pure_symbol_title_bar_separator "—"
