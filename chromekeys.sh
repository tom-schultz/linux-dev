#!/bin/bash
if type croutonversion &>/dev/null; then
  #If this is a crouton chroot, then swap left ctrl and search keys
  xmodmap -e "keycode 133 = Control_L"
  xmodmap -e "keycode 37 = Control_R"
  xmodmap -e "keycode 105 = Super_L"
  xmodmap -e "add control = Control_L"
  xmodmap -e "add control = Control_R"
  xmodmap -e "remove control = Super_L"
fi
