# Example in youtube video "NEVER lose dotfiles again with GNU Stow"

## Example:

conf file for hyprland are in `~/.config/hypr/...`

got to stow dot files folder (this one), create a directory with the name "hypr",

in "hypr" directory move `~/.config/hypr` to `(stow dot files folder)/hypr/` so that it's `(...)/hypr/.config/hypr/...configs`

in stow dot fiels folder write "stow hypr", it will create a symlink in `~./config/` of the name "hypr" which points to `(...)/hypr/.config/hypr`

