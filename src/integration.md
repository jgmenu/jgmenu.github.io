# Integration

Panels

- [tint2](#tint2)
- [polybar](#polybar)
- [unity](#unity)
- [cairo-dock](#cairo)
- [plank](#polybar)

Window Managers

- [openbox](#openbox)
- [i3](#i3)
- [dwm](#dwm)

Other

- [start in background](#background)
- [compton](#compton)
- [obmenu-generator](#obmenu)
- [superkey](#superkey)

## Panels

### tint2 {#tint2}

In jgmenurc, set `tint2_look = 1` to make jgmenu look like tint2 (i.e. colour, font, margin, padding and position). Other config variables in jgmenurc will overrule any tint2 settings, so start with all other lines commented out.

The `button` plugin was designed for jgmenu, and is therefore the preferred method. Take the following steps to insert a button plugin:

Add the letter `P` to `panel_items` in tint2rc.  For example `panel_items = PTSBC`.

Add the following to tint2rc:

    button = new
    button_icon = /path/to/favourite_icon.png
    button_lclick_command = jgmenu_run


An `exec plugin` (`E`) or `launcher plugin` (`L`) can also be used. See `man tint2` for implementation details.

Note: The tint2 `launcher plugin` is significantly slower than button and exec plugins.

In order to avoid `startup notification` (spinning hour-glass after clicking button or launcher), set the following in ~/.config/tint2/tint2rc:

```
startup_notifications = 0
```

tint2 respects the `StartupNotify=` key in the .desktop files, so if you want to have a menu button wihtout SN and other launchers with SN, you would have to set `startup_notification = 1` in tint2rc and use a launcher plugin for your jgmenu button.

### polybar {#polybar}

Add "jgmenu" to one of "modules-{left,center,right} in the "[bar/foo]" section.

For example:

    [bar/example]
    modules-left = jgmenu bspwm i3

Also add:

    [module/jgmenu]
    type = custom/text
    content-padding = 2
    content = menu
    click-left = "jgmenu_run >/dev/null 2>&1 &"

### unity {#unity}

The installation process creates a desktop-file in
`$prefix/share/applications` (or `~/.local/share/applications`
if $prefix is set to $HOME).

If using default desktop file (which simply executes `jgmenu_run`)
in Ubuntu's Unity panel, the launcher will flash for 5-7 seconds
and you will not be able to click it again during this time.

To prevent this from happening, prepend the `Exec=` command with
`env JGMENU_UNITY=1`. For example:

    Exec=env JGMENU_UNITY=1 jgmenu_run

### cairo-dock {#cairo}

Add the jgmenu launcher by dragging to the dock.

By default, cairo-dock is setup to prevent the user clicking
multiple times in quick succession on the same icon. In order to
achieve menu-like behaviour, carry out the following steps:

  - Right-click on the jgmenu launcher.
  - Click "Cairo-Dock" -> "Configure"
  - Select the "Current Items" tab.
  - Select "jgmenu"
  - Under "Extra Parameters", tick "Don't link the launcher with its window"

### plank {#plank}

In your file manager, navigate to `/usr/share/applications/` (or similar path
depending on where .desktop files are installed on your system).

Drag the jgmenu launcher onto the panel.

On early versions of plank, the full icon path name was needed in the
.desktop file. Please edit manually if this is the case on your system.

## Window Managers

### openbox {#openbox}

To bind `jgmenu_run` to a keyboard shortcut (ctrl-escape in this case), add
the following to the `<keyboard></keyboard>` section of
`~/.config/openbox/rc.xml`

```
<keybind key="C-Escape">
  <action name="Execute">
    <command>jgmenu_run</command>
  </action>
</keybind>
```

To bind `jgmenu_run` to a mouse event (right click on root window in this
case), add the following to the `<mouse><context
name="Root"></context></mouse>` section of `~/.config/openbox/rc.xml`

```
<mousebind button="Right" action="Release">
  <action name="Execute">
    <command>jgmenu_run</command>
  </action>
</mousebind>
```

Note: `action="Press"` can be used instead of `action="Release"`

### i3 {#i3}

In i3 it would probably seem most natural to bind a key-combination to jgmenu.
For example, like this:

    bindsym $mod+z exec jgmenu_run

i3 provides no way to access the root window, a right-click can be bound on the
status bar like this.

    bar {
            bindsym button3 exec --no-startup-id jgmenu_run
    }

### dwm {#dwm}

To associate jgmenu with a keyboard shortcut (alt-F1 in this case), add the
following to the `keys[]` array in `config.h`

```C
{ MODKEY, XK_F1, spawn, {.v = jgmenucmd } },
```

In the `/* commands */` section, add

```C
static const char *jgmenucmd[]  = { "jgmenu_run", NULL };
```

Example jgmenurc to suit dwm:

```
tint2_look          = 0
menu_width          = 120
menu_margin_y       = 17
menu_margin_x       = 0
menu_padding_top    = 0
menu_padding_right  = 0
menu_padding_bottom = 0
menu_padding_left   = 0
menu_radius         = 1
menu_valign         = top
sub_spacing         = 0
item_margin_x       = 1
item_margin_y       = 1
item_height         = 17
sep_height          = 4
icon_size           = 0
arrow_width         = 8
```

To launch jgmenu on background right click or window title click, add the
following to the `buttons[]` array:

```C
{ ClkWinTitle, 0, Button1, spawn, {.v = jgmenucmd } },
{ ClkWinTitle, 0, Button3, spawn, {.v = jgmenucmd } },
{ ClkRootWin,  0, Button3, spawn, {.v = jgmenucmd } },
```

and add the following to jgmenurc

```
at_pointer          = 1
```

## Other

### Start in background {#background}

To start jgmenu in the background during the boot process, use the following
command:

    (sleep 2s; jgmenu --hide-on-startup) &

Note: If started in this way, `_NET_WORKAREA` may not be read correctly

### compton {#compton}

The X11 properties `WM_NAME` and `WM_CLASS` are set for jgmenu windows.

In order to avoid jgmenu shadows, add one of these lines to
~/.config/compton.conf:

```
shadow-exclude = [ "name = 'jgmenu'" ];
```

```
shadow-exclude = [ "class_g = 'jgmenu'" ];
```

### obmenu-generator {#obmenu}

`obmenu-generator` (by @trizen) produces menu data in openbox XML format.
It can be with with jgmenu in at least two ways:

1. Run this from a terminal:

    jgmenu --csv-cmd="jgmenu_run ob --cmd='obmenu-generator -i'"

2. Set the following in your ~/.config/jgmenu/jgmenurc:

    csv_cmd = jgmenu_run ob --cmd='obmenu-generator -i'

For installation of obmenu-generator, see [obmenu-generator/INSTALL.md](https://github.com/trizen/obmenu-generator/blob/master/INSTALL.md)  

    git clone https://github.com/trizen/obmenu-generator.git

### superkey {#superkey}

In order to bind jgmenu to the super-key, take the following steps:

  1. Bind `jgmenu_run` to a key combination.
     `Control + Escape` will be used in this example.

  2. Install `xcape` and run the following:
     `xcape -e 'Super_L=Control_L|Escape'`

`ksuperkey` is a very similar package and can be used instead of `xcape`

