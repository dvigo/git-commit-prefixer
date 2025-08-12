# git-commit-prefixer - Zsh plugin to add commit prefixes with optional icons
# Copyright (C) 2025 David Vigo
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Path to the configuration file
ICON_CONFIG="${0:A:h}/icons.conf"
source "$ICON_CONFIG" 2>/dev/null || {
  echo "$ICON_CONFIG not found"
  return 1
}

# Function to get the prefix
get_icon_prefix() {
  local type="$1"
  local base_var="${type}_${PREFIX_STYLE}"  # e.g.: feat_brackets
  local prefix="${(P)base_var}"

  if [[ "$USE_ICONS" == true ]]; then
    local icon_var="${type}_icon_${ICON_STYLE}"  # e.g.: feat_icon_classic
    local icon="${(P)icon_var}"
    echo "$icon $prefix"
  else
    echo "$prefix"
  fi
}

# Main command
git-commit-prefixer() {
  if [[ -z "$1" ]]; then
    echo "Usage: git-commit-icon <type> \"message\""
    echo "Example: git-commit-icon feat \"add login page\""
    return 1
  fi

  local type="$1"
  shift
  local msg="$*"
  local prefix
  prefix=$(get_icon_prefix "$type")

  git commit -m "$prefix $msg"
}
