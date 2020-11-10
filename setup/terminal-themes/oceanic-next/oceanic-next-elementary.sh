#!/bin/bash

#
# OCEANIC NEXT terminal theme for elementary OS (https://elementary.io)
#

SCHEMA="io.elementary.terminal.settings"

gsettings set "$SCHEMA" palette '#1B2B34:#E06C75:#99C794:#FAC863:#6699CC:#C594C5:#5FB3B3:#A7ADBA:#4F5B66:#EC5F67:#99C794:#FAC863:#6699CC:#C594C5:#5FB3B3:#D8DEE9'
gsettings set "$SCHEMA" background '#1B2B34'
gsettings set "$SCHEMA" foreground '#CDD3DE'
gsettings set "$SCHEMA" cursor-color '#CDD3DE'
gsettings set "$SCHEMA" cursor-shape 'I-Beam'
gsettings set "$SCHEMA" tab-bar-behavior 'Hide When Single Tab'

## elementary OS default properties (uncomment if necessary)
#gsettings set "$SCHEMA" palette '#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4'
#gsettings set "$SCHEMA" background 'rgba(37, 46, 50, 0.95)'
#gsettings set "$SCHEMA" foreground '#94a3a5'
#gsettings set "$SCHEMA" cursor-color '#839496'
#gsettings set "$SCHEMA" cursor-shape 'Block'
#gsettings set "$SCHEMA" tab-bar-behavior 'Always Show Tabs'

unset SCHEMA
