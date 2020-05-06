# Roadmap

## 2020 Q2

- Add strict xdg compliant execl function (i.e. without "sh -c" wrapper).
- Add CSV field for `strict_xdg_exec`
- Widgets: Parse align field
- Create jgmenupango(7)
- jgmenu(1): add TOC

## 2020 Q3

- Finish off columns implementation
    * Support moving left/right between columns
    * Deal with `menu_width` more intelligently
    * Deal with `menu_height` (incl dyamic mode) more intelligently
- Split t2conf.c code into separate module and call using hooks. This will simplify the code base.
- Support parsing compton.conf menu-opacity value
- Widgets: Add widget which refreshes each time menu is awoken (if mtime changed - possibly 'file' and 'exec') [https://forums.bunsenlabs.org/viewtopic.php?pid=91333#p91333](https://forums.bunsenlabs.org/viewtopic.php?pid=91333#p91333)

## 2020 Q4

- Support startup notification (issue #62) and add CSV fields 7 for `startup_notify`
- Add better timer support
  * Add blinking cursor to search field
  * Support widgets which refresh in real time
- ^rootpipe()
- HiDPI support (issue #37)

## 2021+

- Custom key bindings
- Scroll bar indicator (issue #34)
- Support for adding favourites in real-time (e.g. keyboard shortcut for locking
  menu-item onto the root menu - or similar)
- Inline expansion of menus

## Unlikely {#unlikely}

This category contains features and requests that I am unlikely to implement
myself. I don't want to dampen anyone's enthusiasm, but am trying to be
realistic about it.

- Icons in pipe-menus (issue #75)
- Open submenu when navigating up/down with keyboard (issue #74)
- obtheme: deal with gradients and RGB(rrr, ggg, bbb) format

<hr />

