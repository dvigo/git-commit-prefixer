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
