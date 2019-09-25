# Roadmap

## Before Next Release

- Support xfce-plugin
   * ~~[Remove tint2 config dependency from IPC](https://forums.bunsenlabs.org/viewtopic.php?pid=88867#p88867)~~
   * Make API clear regarding use of TINT environment variables for IPC
   * Add TINT variables to jgmenu(1)
   * ~~Update `jgmenu_run` wrt TINT API [thread1](https://forums.bunsenlabs.org/viewtopic.php?pid=88901#p88901)~~
   * ~~add `position_mode` config option [thread2](https://forums.bunsenlabs.org/viewtopic.php?pid=88563#p88563)~~

## 2019

- Create website and tidy up manual
- Cut Exec field correctly (i.e. at % but not %%) (issue #68)
- Add strict xdg compliant execl function (i.e. without "sh -c" wrapper). Add CSV fields 6 for `strict_xdg_exec`
- Tidy up widgets
    * Parse align field
    * Strip space from widget action (trim argv-buf fields on parse)
    * add to jgmenu(1) man page
    * Add widget which refreshes each time menu is awoken (for conky type data)
- Finish off columns implementation
    * Support moving left/right between columns
    * Deal with `menu_width` more intelligently
    * Deal with `menu_height` (incl dyamic mode) more intelligently
- Hooks (watch files and exec command on change)
  * Split t2conf.c code into separate module and call using hooks. This will simplify the code base.
  * Support GTK theme
  * Support parsing compton.conf menu-opacity value
- [Finish `apps` module and retire `pmenu`](#apps)
- [Improve `lx` module](#lx)
- obtheme: deal with gradients and RGB(rrr, ggg, bbb) format

## 2020

- Case-insensitive non-ASCII search (issue #91)
- Support startup notification (issue #62) and add CSV fields 7 for `startup_notify`
- Add better timer support
  * Add blinking cursor to search field
  * Support widgets which refresh in real time
- ^rootpipe()
- HiDPI support (issue #37)

## 2021+

- Custom key bindings
- Scroll bar indicator (issue #34)
- Support for adding favourites in real-time (e.g. keyboard shortcut for locking menu-item onto the root menu - or similar)
- Inline expansion of menus

## Unlikely

This category contains features and requests that I am unlikely to implement myself. I don't want to dampen anyone's enthusiams, but am trying to be realistic about it.

- Icons in pipe-menus

<hr />

# Further breakdown of specific items

### lx {#lx}

- ~~Use unique(ish) tag names to avoid clashes~~
- Support i18n for prepend.csv and append.csv
- Use desktop specific flags
- Add 'comment' to `csv_name_format` (%c)
- Triple quote all variables if they contain commas (not just name and exec)
- Apply `csv_name_format` to directories too
- Fix bug: `JGMENU_NO_DIRS=1` with append and prepend doesn't work
- If no menu file or no root dir, write tempfile with &lt;All /&gt;. This allows lx to run even if no menu package exists (albeit without directories).
- Read the above temp file if "--no-dir" specified (puts item in alphabetical order without having to do a qsort)
- Deal with xfce-applications.menu. Currently libmenu-cache can't read it because the root-item has the wrong name.
- Support `JGMENU_SINGLE_WINDOW=1`
- Check that .desktop files are not Unicode in order to avoid segfault (add unit test)
- Write some unit tests (incl. nested menus)
- Parse %% correctly in 'Exec=' field (isuse #68)
- Remove % items ina more sophisticated way
- Cope with desktop-file without exec field


### `apps` {#apps}

- keep track of filename and thereby remove duplicates (e.g. in ~/.local/share/applications/)
- apps: add `csv_name_format` support
- support directories
  * support built-in l10n for directory names
  * add categories based on greeneye
- add man page

