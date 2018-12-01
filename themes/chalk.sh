#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#646464"           # HOST
export COLOR_02="#F58E8E"           # SYNTAX_STRING
export COLOR_03="#A9D3AB"           # COMMAND
export COLOR_04="#FED37E"           # COMMAND_COLOR2
export COLOR_05="#7AABD4"           # PATH
export COLOR_06="#D6ADD5"           # SYNTAX_VAR
export COLOR_07="#79D4D5"           # PROMP
export COLOR_08="#D4D4D4"           #

export COLOR_09="#646464"           #
export COLOR_10="#F58E8E"           # COMMAND_ERROR
export COLOR_11="#A9D3AB"           # EXEC
export COLOR_12="#FED37E"           #
export COLOR_13="#7AABD4"           # FOLDER
export COLOR_14="#D6ADD5"           #
export COLOR_15="#79D4D5"           #
export COLOR_16="#D4D4D4"           #

export BACKGROUND_COLOR="#2D2D2D"   # Background Color
export FOREGROUND_COLOR="#D4D4D4"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Chalk"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
