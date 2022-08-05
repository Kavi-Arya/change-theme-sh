#!/bin/sh

#TODO Dracula and Everforest


theme="Gruvbox"
input=$(echo -n '' | dmenu -i -l 2 -bw 2 -fn "JetBrainsMono-Bold 20" -p "Hi, What Theme Would You Like:- ")

# Changing Theme :O  
if test "$input" = "Gruvbox"; then
  rm -rf $HOME/.config/gtk-3.0/settings.ini
  cp -r $HOME/themes-wm/settings.ini.gruvbox $HOME/.config/gtk-3.0/settings.ini
  rm -rf $HOME/.config/dwm/themes/theme.h
  rm -rf $HOME/.config/dwm/config.h
  rm -rf $HOME/.config/dwm/keybind.h
  rm -rf $HOME/.config/wallsel
  rm -rf $HOME/.config/Kvl/.obsidian/appearance.json
  rm -rf $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/config-gruvbox.lua $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/appearance-gruvbox.json $HOME/.config/Kvl/.obsidian/appearance.json
  touch $HOME/.config/dwm/themes/theme.h
  touch $HOME/.config/dwm/keybind.h
  touch $HOME/.config/wallsel
  echo '#include "/home/kvl/.config/dwm/themes/gruvbox.h"' >> $HOME/.config/dwm/themes/theme.h
  echo 'static const char *termcmd[]  = { "kitty", NULL };' >> $HOME/.config/dwm/keybind.h
  echo "GRUVBOX" >> $HOME/.config/wallsel 
  sudo make -f /home/kvl/.config/dwm/Makefile install
  pkill dwmbar-colored
  feh --bg-scale /home/kvl/Pictures/wallpapers/Spaceman-gruvbox.png &
elif test "$input" = "Nord"; then
  rm -rf $HOME/.config/gtk-3.0/settings.ini
  cp -r $HOME/themes-wm/settings.ini.nord $HOME/.config/gtk-3.0/settings.ini
  rm -rf $HOME/.config/dwm/themes/theme.h
  rm -rf $HOME/.config/dwm/config.h
  rm -rf $HOME/.config/dwm/keybind.h
  rm -rf $HOME/.config/wallsel
  rm -rf $HOME/.config/Kvl/.obsidian/appearance.json
  rm -rf $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/config-nord.lua $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/appearance-nord.json $HOME/.config/Kvl/.obsidian/appearance.json
  touch $HOME/.config/dwm/themes/theme.h
  touch $HOME/.config/dwm/keybind.h
  touch $HOME/.config/wallsel
  echo '#include "/home/kvl/.config/dwm/themes/nord.h"' >> $HOME/.config/dwm/themes/theme.h
  echo 'static const char *termcmd[]  = { "kitty","-c" ,"/home/kvl/.config/kitty/kitty-nord.conf" , NULL };' >> $HOME/.config/dwm/keybind.h
  echo "NORD" >> $HOME/.config/wallsel 
  sudo make -f /home/kvl/.config/dwm/Makefile install
  pkill dwmbar-colored
  feh --bg-scale /home/kvl/Pictures/wallpapers/Spaceman-Nord.png
elif test "$input" = "Everforest"; then
  rm -rf $HOME/.config/gtk-3.0/settings.ini
  cp -r $HOME/themes-wm/settings.ini.everforest /home/kvl/.config/gtk-3.0/settings.ini
  rm -rf $HOME/.config/dwm/themes/theme.h
  rm -rf $HOME/.config/dwm/config.h
  rm -rf $HOME/.config/dwm/keybind.h
  rm -rf $HOME/.config/wallsel
  rm -rf $HOME/.config/Kvl/.obsidian/appearance.json
  rm -rf $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/config-everforest.lua $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/appearance-everforest.json $HOME/.config/Kvl/.obsidian/appearance.json
  touch $HOME/.config/dwm/themes/theme.h
  touch $HOME/.config/dwm/keybind.h
  touch $HOME/.config/wallsel
  echo '#include "/home/kvl/.config/dwm/themes/everforest.h"' >> $HOME/.config/dwm/themes/theme.h
  echo 'static const char *termcmd[]  = { "kitty","-c" ,"/home/kvl/.config/kitty/kitty-everforest.conf" , NULL };' >> $HOME/.config/dwm/keybind.h
  echo "EVERFOREST" >> $HOME/.config/wallsel 
  sudo make -f /home/kvl/.config/dwm/Makefile install
  pkill dwmbar-colored
  feh --bg-scale /home/kvl/Pictures/wallpapers/Spaceman-Everforest.png
elif test "$input" = "Dracula"; then
  rm -rf $HOME/.config/gtk-3.0/settings.ini
  cp -r $HOME/themes-wm/settings.ini.dracula /home/kvl/.config/gtk-3.0/settings.ini
  rm -rf $HOME/.config/dwm/themes/theme.h
  rm -rf $HOME/.config/dwm/config.h
  rm -rf $HOME/.config/dwm/keybind.h
  rm -rf $HOME/.config/wallsel
  rm -rf $HOME/.config/Kvl/.obsidian/appearance.json
  rm -rf $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/config-dracula.lua $HOME/.config/lvim/config.lua
  cp -r $HOME/themes-wm/appearance-dracula.json $HOME/.config/Kvl/.obsidian/appearance.json
  touch $HOME/.config/dwm/themes/theme.h
  touch $HOME/.config/dwm/keybind.h
  touch $HOME/.config/wallsel
  echo '#include "/home/kvl/.config/dwm/themes/dracula.h"' >> $HOME/.config/dwm/themes/theme.h
  echo 'static const char *termcmd[]  = { "kitty","-c" ,"/home/kvl/.config/kitty/kitty-dracula.conf" , NULL };' >> $HOME/.config/dwm/keybind.h
  echo "DRACULA" >> $HOME/.config/wallsel 
  sudo make -f /home/kvl/.config/dwm/Makefile install
  pkill dwmbar-colored
  feh --bg-scale /home/kvl/Pictures/wallpapers/Spaceman-Dracula.png
else
  echo "No Changes"
fi
