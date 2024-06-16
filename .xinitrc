#!/bin/sh

# Άλλες ρυθμίσεις για το Xorg
xset s off         # Απενεργοποίηση του screensaver
xset -dpms         # Απενεργοποίηση του Display Power Management Signaling
xset s noblank     # Απενεργοποίηση του blanking της οθόνης

eval "$(starship init bash)" &

# Εκκίνηση του polkit-gnome agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Εκκίνηση του bspwm
exec bspwm
