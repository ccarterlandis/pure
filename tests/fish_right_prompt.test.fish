source $current_dirname/../fish_right_prompt.fish

set --local empty ''

@test "fish_right_prompt: succeed" (
    function pure_right_prompt
    end

    fish_right_prompt 2>&1 >/dev/null
) $status -eq 0

@test "fish_right_prompt: prints $pure_color_right_prompt" (
    function pure_right_prompt
        echo "🐙"  # U+1F419 OCTOPUS
    end
    set pure_color_right_prompt $empty
    set pure_color_normal $empty

    fish_right_prompt
) = '🐙'

@test "fish_right_prompt: prints colorful right_prompt" (
    function pure_right_prompt
        echo "🐬"  # U+1F42C DOLPHIN
    end
    set pure_color_right_prompt (set_color blue)
    set pure_color_normal (set_color normal)

    fish_right_prompt
) = (set_color blue)'🐬'(set_color normal)

@test "fish_right_prompt: prints different dates on each prompt" (
    function pure_right_prompt
        date '+%s%3N'
    end
    set pure_color_right_prompt ""  # drop ANSI-color code
    set pure_color_normal ""  # drop ANSI-color code

    set first (fish_right_prompt)
    sleep 0.1s
    set last (fish_right_prompt)

    math $last - $first
) -gt 1
