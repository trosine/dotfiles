# Custom prompt based on Solarized
# This theme for gitprompt.sh is optimized for the "Solarized Dark" and "Solarized Light" color schemes 
# tweaked for Ubuntu terminal fonts

override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"
  # GIT_PROMPT_STAGED="${Yellow}●"
  GIT_PROMPT_STAGED="${Yellow}+"
  GIT_PROMPT_CHANGED="${Red}*"
  # GIT_PROMPT_STASHED="${BoldMagenta}⚑"
  GIT_PROMPT_STASHED="${BoldBlue}⚑"
  GIT_PROMPT_CLEAN="${Green}✔"
  GIT_PROMPT_END_USER=" \n\u@$GIT_CUSTOM_HOST ${BoldBlue}${Time12a}${ResetColor} $ "
  GIT_PROMPT_END_ROOT=" \n\u@$GIT_CUSTOM_HOST ${BoldBlue}${Time12a}${ResetColor} # "
}

reload_git_prompt_colors "Custom"
