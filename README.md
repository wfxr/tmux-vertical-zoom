# tmux-vertical-zoom

A tmux plugin to **vertically maximize and restore the current pane**, similar to `resize-pane -Z`, but only changes the pane's height (not width).

## Features

- Toggle the current pane between normal and vertically maximized state.
- Safe for multiple panes and windows.

## Requirements

- tmux 2.6 or later (for pane variables support)

## Installation

With [TPM](https://github.com/tmux-plugins/tpm):

```tmux
set -g @plugin 'wfxr/tmux-vertical-zoom'
```

Then reload tmux config and install plugins with TPM.

## Usage

By default, press `<prefix> + Z` to toggle vertical maximize/restore for the current pane.

You can change the key binding in your `.tmux.conf` (before the TPM plugin line):

```tmux
set -g @vertical-zoom-key "Z"
set -g @plugin 'wfxr/tmux-vertical-zoom'
```

## License

MIT License
