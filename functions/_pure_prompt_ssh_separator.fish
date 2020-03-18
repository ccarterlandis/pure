function _pure_prompt_ssh_separator
    set --local separator_symbol "@"
    set --local separator_symbol_color (_pure_set_color white)

    echo "$separator_symbol_color$separator_symbol"
end
