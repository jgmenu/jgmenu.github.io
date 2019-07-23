# Roadmap

## 2019

- Cut Exec field correctly (i.e. at % but not %%) (issue #68)
- Case-insensitive non-ASCII search (issue #91)
- [xfce-plugin](#xfce)
- Extend API whilst remaining backward compatible. Add CSV fields 6 `strict_xdg_exec` (for no sh -c '' etc) and 7 `startup_notify`
- Add strict xdg compliant execl function (i.e. without "sh -c" wrapper)
- Support startup notification (issue #62)
- [Improve columns implementation](#columns)
- Hooks (watch files and exec command on change)
  * Split t2conf.c code into separate module and call using hooks
  * Support GTK theme
- [Finish `apps` module and retire `pmenu`](#apps)
- [Improve `lx` module](#lx)

## 2020

- Add better timer support
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

### xfce-plugin {#xfce}

- [Remove tint2 config dependency from IPC](https://forums.bunsenlabs.org/viewtopic.php?pid=88867#p88867)

### widgets {#widgets}

- Parse align field
- Strip space from widget action (trim argv-buf fields on parse)
- add to jgmenu(1) man page

### lx {#lx}

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

### columns {#columns}

- Support moving left/right between columns
- Deal with `menu_width` correctly
- Deal with `menu_height` (incl dyamic mode) correctly

### `apps` {#apps}

- keep track of filename and thereby remove duplicates (e.g. in ~/.local/share/applications/)
- apps: add `csv_name_format` support
- support directories
  * support built-in l10n for directory names
  * add categories based on greeneye
- add man page
