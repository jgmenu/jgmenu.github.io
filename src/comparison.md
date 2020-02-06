# Comparison of Application Menu Modules

All modules have the following features:

- Localisation of .desktop files and directory names  
- Inclusion of append.csv and prepend.csv in root menu  
- Support config option `csv_no_dirs`  

The table below describes features which vary between modules:

|                                       | apps   | lx     | pmenu  |
|---------------------------------------|--------|--------|--------|
| speed                                 | fast   | fast   | slow   |
| language                              | C      | C      | python |
| XDG compliance                        | no     | yes    | no     |
| Config option `csv_single_window`     | fast   | fast   | slow   |
| Config option `csv_name_format`       | yes    | yes    | no     |
| i18n of append.csv and prepend.csv    | yes    | no     | no     |


