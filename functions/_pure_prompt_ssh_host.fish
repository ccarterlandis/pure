function _pure_prompt_ssh_host
    set --query --global hostname
    or set --local hostname (hostname -s) # current host name compatible busybox
    set --local hostname_color (_pure_set_color yellow)

    echo "$hostname_color$hostname"(set_color white)" in"
end
