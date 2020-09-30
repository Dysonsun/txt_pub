#!/usr/bin/env zsh

###############################################################################
#2020/9/18 sundong
###############################################################################


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo ${DIR}

source ./devel_isolated/setup.zsh
python tools/realtime_plot.py
