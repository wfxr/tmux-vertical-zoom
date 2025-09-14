#!/usr/bin/env bash

# 获取当前 pane id
pane_id="$(tmux display-message -p '#{pane_id}')"
# 当前 pane 的高度
cur_height="$(tmux display-message -p '#{pane_height}')"
# 当前 window 的高度
win_height="$(tmux display-message -p '#{window_height}')"

# 尝试读取变量
saved_height="$(tmux show -v -p -t "$pane_id" @vertical-max-height 2>/dev/null)"

if [[ -z "$saved_height" ]]; then
    # 竖向最大化，记录当前高度
    tmux set -p -t "$pane_id" @vertical-max-height "$cur_height"
    tmux resize-pane -y "$win_height"
else
    # 恢复
    tmux resize-pane -y "$saved_height"
    tmux set -p -t "$pane_id" @vertical-max-height ""
fi
