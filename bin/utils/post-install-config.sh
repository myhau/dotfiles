# shortcuts

xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/commands/custom/Super_L"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/Super_L" -s "xfce4-popup-whiskermenu"

xfconf-query -c xfce4-keyboard-shortcuts -t "String" -pn "/xfwm4/custom/<Primary><Super>Left" 
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>Left" -s tile_left_key
xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/xfwm4/custom/<Primary><Super>Right" 
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>Right" -s tile_right_key
xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/xfwm4/custom/<Primary><Super>Up" 
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>Up" -s tile_up_key
xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/xfwm4/custom/<Primary><Super>Down" 
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>Down" -s tile_down_key
xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/xfwm4/custom/<Primary><Super>9" 
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>9" -s maximize_window_key
xfconf-query -c xfce4-keyboard-shortcuts -t "String" -n "/xfwm4/custom/<Primary><Super>0"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>0" -s hide_window_key


# themes / look n feel

#theme
xfconf-query -c xfwm4 -p /general/theme -s Greybird-compact

#icon theme
xfconf-query -c xsettings -p /Net/IconThemeName -s Numix-Circle

#font 
xfconf-query -c xsettings -p /Gtk/FontName -s "Droid Sans 9"

#tranparent panel
xfconf-query -c xfce4-panel -p /panels/panel-0/background-alpha -s 0 

#colorzz
xfconf-query -c xsettings -p /Gtk/ColorScheme -s "selected_bg_color:#3465a4;selected_fg_color:#eeeeee;"

