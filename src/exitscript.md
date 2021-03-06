```
#!/bin/sh
#
# This script launches jgmenu in short-lived mode.
# It can be run with a parallel with a long-running invocation of jgmenu
#

config_file=$(mktemp)
trap "rm -f ${config_file}" EXIT

cat <<'EOF' >${config_file}
menu_radius         = 1
menu_halign         = center
menu_valign         = center
item_margin_x       = 0
item_margin_y       = 0
item_height         = 34
font                = Sans 10
icon_size           = 24
color_menu_bg       = #C8CFCB 100
color_menu_border   = #C8CFCB 8
color_norm_bg       = #C8CFCB 00
color_norm_fg       = #13071B 100
color_sel_bg        = #74998B 100
color_sel_fg        = #101010 100
color_sel_border    = #74998B 8
EOF

(
printf "%b\n" "logout,openbox --exit,/usr/share/images/bunsen/exit/light/logout-sm.png"
printf "%b\n" "poweroff,systemctl -i poweroff,/usr/share/images/bunsen/exit/light/poweroff-sm.png"
printf "%b\n" "reboot,systemctl -i reboot,/usr/share/images/bunsen/exit/light/reboot-sm.png"
printf "%b\n" "sleep,systemctl -i suspend,/usr/share/images/bunsen/exit/light/sleep-sm.png"
) | jgmenu --simple --config-file=${config_file}
```
