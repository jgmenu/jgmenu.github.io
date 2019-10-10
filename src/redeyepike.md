# redeyepike

A tint2 + jgmenu setup

## Requirements

[tint2](https://gitlab.com/o9000/tint2)  
[jgmenu](https://github.com/johanmalm/jgmenu)  
[fontawesome](http://fontawesome.io/cheatsheet/)  
[ACYLS](https://github.com/worron/ACYLS)  

## Colours

background-image #3C3F45  
tint2-background #2C313C  
tint2-font #8FA1B3  
tint2-active_task #6BA4E7  

## Installation

Install tint2, fontawesome and jgmenu from your repo.

Install ACYLS and run it with the colour set to #8FA1B3

    sudo pacman -S python-gobject python-lxml
    cd ~/.local/share/icons
    git clone https://github.com/worron/ACYLS.git
    python3 ACYLS/scripts/run.py

## jgmenurc

```
tint2_look          = 1
menu_border         = 1
item_height         = 20
item_border         = 1
icon_size           = 16
color_menu_border   = #8FA1B3 30
color_sel_border    = #8FA1B3 40
color_sep_fg        = #8FA1B3 40
```

## tint2rc

```
#-------------------------------------
# Gradients
#-------------------------------------
# Backgrounds
# Background 1: Panel
rounded = 0
border_width = 1
border_sides = B
background_color = #2c313c 100
border_color = #8fa1b3 100
background_color_hover = #000000 60
border_color_hover = #000000 30
background_color_pressed = #000000 60
border_color_pressed = #000000 30

# Background 2: Default task, Iconified task
rounded = 4
border_width = 1
border_sides = TBLR
background_color = #777777 0
border_color = #777777 0
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 3: Active task
rounded = 4
border_width = 2
border_sides = B
background_color = #777777 0
border_color = #6ba4e7 100
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 4: Urgent task
rounded = 4
border_width = 1
border_sides = TBLR
background_color = #aa4400 100
border_color = #aa7733 100
background_color_hover = #cc7700 100
border_color_hover = #aa7733 100
background_color_pressed = #555555 4
border_color_pressed = #aa7733 100

# Background 5: Tooltip
rounded = 1
border_width = 4
border_sides = TBLR
background_color = #ffffaa 100
border_color = #ca8c8c 79
gradient_id = 0
background_color_hover = #ffffaa 100
border_color_hover = #000000 100
background_color_pressed = #ffffaa 100
border_color_pressed = #d2a0a0 100

#-------------------------------------
# Panel
panel_items = PPP:T:PE:B:C
panel_size = 100% 24
panel_margin = 0 0
panel_padding = 2 0 2
panel_background_id = 1
wm_menu = 1
panel_dock = 0
panel_position = top center horizontal
panel_layer = top
panel_monitor = all
panel_shrink = 0
autohide = 0
autohide_show_timeout = 0
autohide_hide_timeout = 0.5
autohide_height = 2
strut_policy = follow_size
panel_window_name = tint2
disable_transparency = 1
mouse_effects = 1
font_shadow = 0
mouse_hover_icon_asb = 100 0 10
mouse_pressed_icon_asb = 100 0 0

#-------------------------------------
# Taskbar
taskbar_mode = single_desktop
taskbar_hide_if_empty = 0
taskbar_padding = 6 1 2
taskbar_background_id = 0
taskbar_active_background_id = 0
taskbar_name = 0
taskbar_hide_inactive_tasks = 0
taskbar_hide_different_monitor = 0
taskbar_hide_different_desktop = 0
taskbar_always_show_all_desktop_tasks = 0
taskbar_name_padding = 4 2
taskbar_name_background_id = 0
taskbar_name_active_background_id = 0
taskbar_name_font_color = #8fa1b3 100
taskbar_name_active_font_color = #6ba4e7 100
taskbar_distribute_size = 0
taskbar_sort_order = none
task_align = left
task_thumbnail = 1
task_thumbnail_size = 200

#-------------------------------------
# Task
task_text = 0
task_icon = 1
task_centered = 1
urgent_nb_of_blink = 100000
task_maximum_size = 40 35
task_padding = 6 2 4
task_tooltip = 1
task_font_color = #8fa1b3 100
task_background_id = 2
task_active_background_id = 3
task_urgent_background_id = 4
task_iconified_background_id = 2
mouse_left = toggle_iconify
mouse_middle = none
mouse_right = close
mouse_scroll_up = toggle
mouse_scroll_down = iconify

#-------------------------------------
# System tray (notification area)
systray_padding = 0 4 2
systray_background_id = 0
systray_sort = ascending
systray_icon_size = 24
systray_icon_asb = 100 0 0
systray_monitor = 1
systray_name_filter = 

#-------------------------------------
# Launcher
launcher_padding = 2 4 2
launcher_background_id = 0
launcher_icon_background_id = 0
launcher_icon_size = 24
launcher_icon_asb = 100 0 0
launcher_icon_theme = ACYLS
launcher_icon_theme_override = 1
startup_notifications = 1
launcher_tooltip = 1
launcher_item_app = /usr/share/applications/tint2conf.desktop
launcher_item_app = /usr/local/share/applications/tint2conf.desktop
launcher_item_app = /usr/share/applications/firefox.desktop
launcher_item_app = /usr/share/applications/iceweasel.desktop
launcher_item_app = /usr/share/applications/chromium-browser.desktop
launcher_item_app = /usr/share/applications/google-chrome.desktop

#-------------------------------------
# Clock
time1_format = %H:%M
time2_format = 
time1_font = Sans 10
time1_timezone = 
time2_timezone = 
clock_font_color = #8fa1b3 100
clock_padding = 2 0
clock_background_id = 0
clock_tooltip = 
clock_tooltip_timezone = 
clock_lclick_command = 
clock_rclick_command = 
clock_mclick_command = 
clock_uwheel_command = 
clock_dwheel_command = 

#-------------------------------------
# Battery
battery_tooltip = 1
battery_low_status = 10
battery_low_cmd = notify-send "battery low"
battery_full_cmd = 
bat1_font = Sans 10
bat2_font = Sans 0
battery_font_color = #8fa1b3 100
bat1_format = %p
bat2_format = 
battery_padding = 1 0
battery_background_id = 0
battery_hide = 101
battery_lclick_command = 
battery_rclick_command = 
battery_mclick_command = 
battery_uwheel_command = 
battery_dwheel_command = 
ac_connected_cmd = 
ac_disconnected_cmd = 

#-------------------------------------
# Separator 1
separator = new
separator_background_id = 0
separator_color = #8fa1b3 100
separator_style = line
separator_size = 1
separator_padding = 5 4

#-------------------------------------
# Separator 2
separator = new
separator_background_id = 0
separator_color = #8fa1b3 100
separator_style = line
separator_size = 1
separator_padding = 5 4

#-------------------------------------
# Separator 3
separator = new
separator_background_id = 0
separator_color = #8fa1b3 100
separator_style = line
separator_size = 1
separator_padding = 5 4

#-------------------------------------
# Separator 4
separator = new
separator_background_id = 0
separator_color = #8fa1b3 100
separator_style = line
separator_size = 1
separator_padding = 5 4

#-------------------------------------
# Separator 5
separator = new
separator_background_id = 0
separator_color = #8fa1b3 100
separator_style = line
separator_size = 1
separator_padding = 5 4

#-------------------------------------
# Button 1
button = new
#button_text = 
#button_text = 
button_text = 
button_lclick_command = jgmenu_run
button_rclick_command = 
button_mclick_command = 
button_uwheel_command = 
button_dwheel_command = 
button_font = FontAwesome 10
button_font_color = #8fa1b3 100
button_padding = 4 0
button_background_id = 0
button_centered = 0
button_max_icon_size = 18

#-------------------------------------
# Button 2
button = new
button_text = 
button_lclick_command = 
button_rclick_command = 
button_mclick_command = 
button_uwheel_command = 
button_dwheel_command = 
button_font = FontAwesome 10
button_font_color = #8fa1b3 100
button_padding = 4 0
button_background_id = 0
button_centered = 0
button_max_icon_size = 0

#-------------------------------------
# Button 3
button = new
#button_text = 
button_text = 
button_lclick_command = 
button_rclick_command = 
button_mclick_command = 
button_uwheel_command = 
button_dwheel_command = 
button_font = FontAwesome 10
button_font_color = #8fa1b3 100
button_padding = 4 0
button_background_id = 0
button_centered = 0
button_max_icon_size = 0

#-------------------------------------
# Button 4
button = new
button_text =           
button_lclick_command = 
button_rclick_command = 
button_mclick_command = 
button_uwheel_command = 
button_dwheel_command = 
button_font = FontAwesome 10
button_font_color = #8fa1b3 100
button_padding = 4 0
button_background_id = 0
button_centered = 0
button_max_icon_size = 0

#-------------------------------------
# Executor 1
execp = new
execp_command = df -H | grep -v boot | grep -v shm | awk '/dev\// {printf "%s %s %s\n", $6, $2, $5}' ; df -h >&2
execp_interval = 180
execp_has_icon = 0
execp_cache_icon = 1
execp_continuous = 0
execp_markup = 1
execp_lclick_command = jgmenu_run
execp_rclick_command = 
execp_mclick_command = 
execp_uwheel_command = 
execp_dwheel_command = 
execp_font = Sans 10
execp_font_color = #8fa1b3 100
execp_padding = 8 0
execp_background_id = 0
execp_centered = 0
execp_icon_w = 28
execp_icon_h = 28

#-------------------------------------
# Tooltip
tooltip_show_timeout = 0.5
tooltip_hide_timeout = 0.1
tooltip_padding = 2 2
tooltip_background_id = 5
tooltip_font_color = #222222 100
```