{ config, pkgs, ... }:

{
  home.file.".config/kitty/kitty.conf".text = ''
# vim:ft=kitty

#fish shell
shell fish

# Remove close window confirm
confirm_os_window_close 0

# Font config
font_family      FiraCode Nerd Font
bold_font        FiraCode Nerd Font
italic_font      FiraCode Nerd Font
bold_italic_font FiraCode Nerd Font

font_size 14.0

tab_bar_edge bottom

#: The edge to show the tab bar on, top or bottom.

tab_bar_margin_width 0.0

#: The margin to the left and right of the tab bar (in pts).

# tab_bar_margin_height 0.0 0.0

#: The margin above and below the tab bar (in pts). The first number
#: is the margin between the edge of the OS Window and the tab bar.
#: The second number is the margin between the tab bar and the
#: contents of the current tab.

tab_bar_style powerline
active_tab_background #5353d4
inactive_tab_background #7979e8

tab_bar_background #1c1c21
map ctrl+shift launch --cwd=current --type=tab

# Window padding
window_padding_width 10

# The basic colors
foreground              #CDD6F4
background              #1E1E2E
selection_foreground    #1E1E2E
selection_background    #F5E0DC

# Cursor colors
cursor                  #F5E0DC
cursor_text_color       #1E1E2E

# URL underline color when hovering with mouse
url_color               #F5E0DC

# Kitty window border colors
active_border_color     #B4BEFE
inactive_border_color   #6C7086
bell_border_color       #F9E2AF

# OS Window titlebar colors
wayland_titlebar_color system
macos_titlebar_color system

# Tab bar colors
# active_tab_foreground   #11111B
# active_tab_background   #CBA6F7
# inactive_tab_foreground #CDD6F4
# inactive_tab_background #181825
# tab_bar_background      #11111B

# Colors for marks (marked text in the terminal)
mark1_foreground #1E1E2E
mark1_background #B4BEFE
mark2_foreground #1E1E2E
mark2_background #CBA6F7
mark3_foreground #1E1E2E
mark3_background #74C7EC

# The 16 terminal colors

# black
color0 #45475A
color8 #585B70

# red
color1 #F38BA8
color9 #F38BA8

# green
color2  #A6E3A1
color10 #A6E3A1

# yellow
color3  #F9E2AF
color11 #F9E2AF

# blue
color4  #89B4FA
color12 #89B4FA

# magenta
color5  #F5C2E7
color13 #F5C2E7

# cyan
color6  #94E2D5
color14 #94E2D5

# white
color7  #BAC2DE
color15 #A6ADC8
  '';
}
