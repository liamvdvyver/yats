# Yet Another tmux-sessioniser

A session manager based on !(ThePrimeagen's tmux-sessionizer)[https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer]. Supports:

## Features

### Sessioniser

* Fuzzy find and switch to running sessions
* Open !(tmuxifier)[https://github.com/jimeh/tmuxifier] layouts
* Open sessions in directories along multiple search paths
* Open sessions in individually specified directories
* Run a specified command in its own directory

### Harpooniser (WIP)

This is inspired by !(harpoon)[https://github.com/ThePrimeagen/harpoon] for neovim. The goal is to effectively group sessions when working on multiple related repos and allow quick navigation between them.

## Installation

Install with !(Tmux Package Manager)[https://github.com/tmux-plugins/tpm].

### Requirements

* !(fzf)[https://github.com/junegunn/fzf] (optional)
* !(tmuxifier)[https://github.com/jimeh/tmuxifier] (optional)

## Usage

* Run from within tmux (default `<prefix> S`): fuzzy find open/available sessions to create/attach to, and optionally create a new session by name
* `<clone path>/plugins/tmux-sessioniser`: as above, from outside of tmux
* `<clone path>/plugins/tmux-sessioniser session`: attach to/create `session`, where session can be:
    * An existing session
    * A directory appearing on the search path/an individually specified directory (see configuration)
    * A specified command (see configuration)
    * An other directory (e.g. `tmux-sessioniser .`)
    * Otherwise, a name for a new session in `~`

See configuration for more information

* `<clone path>/plugins/tmux-harpooniser`: work in progress

## Configuration

Supports the following tmux settings:

| Option                        | Default   | Behaviour                 |
| ---                           | ---       | ---                       |
| `@sessionise-bind`            | "S"       | Key to lanch fuzzy finder |
| `@harpooniser-append-bind`    | "M"       | WIP                       |
| `@harpooniser-edit-bind`      | "m"       | WIP                       |

Configure by setting the following environment variables:

| Var             | Behaviour                 |
| ---             | ---                       |
| `$YATS_PATH`    | Paths to search in (all immediate subdirectories will appear in the fuzzy finder) |
| `$YATS_EXCLUDE` | Paths to exclude from the search |
| `$YATS_DIRS`    | Individual paths added to the fuzzy finder |
| `$YATS_CMDS`    | Commands added to the fuzzy finder |

`tmux-harpooniser` currently is not configurable.
