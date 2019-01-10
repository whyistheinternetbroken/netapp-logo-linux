#!/bin/bash -e
show_banner() {
    local blue=
    local reset=
    local waist="NNNNNNNNNNNNNNNN"
    local leg="NNNNNN"

        local myterm=$TERM
        if [ "X$myterm" == "X" ]; then
                myterm=linux
        fi
    local color_count=`/usr/bin/tput -T $myterm colors 2> /dev/null` || true


# if the terminal supports it, draw a blue NetApp logo
    if [ "X$color_count" != "X" -a $color_count -gt 0 ]; then
        blue=`/usr/bin/tput setab 4`
        reset=`/usr/bin/tput sgr0`
        waist="                "
        leg="      "
    fi

    cat <<EOF


 ${blue}${waist}${reset}
 ${blue}${waist}${reset}
 ${blue}${waist}${reset}
 ${blue}${leg}${reset}    ${blue}${leg}${reset}
 ${blue}${leg}${reset}    ${blue}${leg}${reset}
 ${blue}${leg}${reset}    ${blue}${leg}${reset}
 ${blue}${leg}${reset}    ${blue}${leg}${reset}



EOF
}

show_banner ""
