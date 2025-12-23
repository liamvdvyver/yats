# Yet Another tmux-sessioniser

A session manager based on [ThePrimeagen's tmux-sessionizer](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer).

## Features

### Sessioniser

* Fuzzy find and switch to running sessions
* Open [tmuxifier](https://github.com/jimeh/tmuxifier) layouts
* Open sessions in directories along multiple search paths
* Open sessions in individually specified directories
* Run a specified command in its own directory

## Installation

Install with [Tmux Package Manager](https://github.com/tmux-plugins/tpm).

### Requirements

* [fzf](https://github.com/junegunn/fzf)
* [tmuxifier](https://github.com/jimeh/tmuxifier) (optional)

## Usage

* Run from within tmux (default `<prefix> S`): fuzzy find open/available sessions to create/attach to, and optionally create a new session by name
* `<clone path>/plugins/tmux-sessioniser`: as above, from outside of tmux
* `<clone path>/plugins/tmux-sessioniser session`: attach to/create `session`, where `session` can be:
    * An existing session
    * A directory appearing on the search path/an individually specified directory (see configuration)
    * A specified command (see configuration)
    * An other directory (e.g. `tmux-sessioniser .`)
    * Otherwise, a name for a new session in `~`

## Configuration

Supports the following tmux settings (multiple values should be newline delimited):

| Option             | Default | Behaviour                                                                         |
| ---                | ---     | ---                                                                               |
| `@yats-bind`       | `S`     | Key to lanch fuzzy finder                                                         |
| `@yats-path`       |         | Paths to search in (all immediate subdirectories will appear in the fuzzy finder) |
| `@yats-exclude   ` |         | Paths to exclude from the search                                                  |
| `@yats-dirs`       |         | Individual paths added to the fuzzy finder                                        |
| `@yats-cmds`       |         | Commands added to the fuzzy finder                                                |

