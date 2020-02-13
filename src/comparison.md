# Comparison of Application Menu Modules

Comparison of:

- [jgmenu-apps(1)](jgmenu-apps.1.html)  
- [jgmenu-lx(1)](jgmenu-lx.1.html)  
- [jgmenu-pmenu(1)](jgmenu-pmenu.1.html)  

The modules have the following features in common:

- Localisation of .desktop files and directory names  
- Inclusion of append.csv and prepend.csv in root menu  
- Support config option `csv_no_dirs`  

The table below describes features which vary between modules:

|                                               | apps   | lx     | pmenu  |
|-----------------------------------------------|--------|--------|--------|
| speed                                         | fast   | fast   | slow   |
| language                                      | C      | C      | python |
| XDG compliance                                | no     | yes    | no     |
| Config option `csv_single_window`             | yes    | yes    | no     |
| Config option `csv_name_format`               | yes    | yes    | no     |
| Config option `csv_one_cat_per_app`           | yes    | no     | no     |
| i18n of append.csv and prepend.csv            | yes    | no     | no     |
| gracefully handle non-utf8 encodings          | yes    | no     | yes    |
| provide directory schema without menu package | yes    | no     | no     |



