#!/usr/bin/env bash +e

SCM_THEME_PROMPT_DIRTY=" ${bold_red}x${normal}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}o${normal}"
SCM_THEME_PROMPT_PREFIX="${green}["
SCM_THEME_PROMPT_SUFFIX="${green}]${normal} "

GIT_THEME_PROMPT_DIRTY=" ${bold_red}x${normal}"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}o${normal}"
GIT_THEME_PROMPT_PREFIX="${green}["
GIT_THEME_PROMPT_SUFFIX="${green}]${normal} "

RBENV_THEME_PROMPT_PREFIX="${purple}["
RBENV_THEME_PROMPT_SUFFIX="]${normal} "

function prompt_command() {
PS1="\
${bold_cyan}$(echo -e '\u03bb')${normal} \
${cyan}\u${normal} \
${white}@${normal} \
${green}\h${normal} \
${white}in${normal} \
${bold_cyan}\w${normal} \
${white}[$(clock_prompt)${white}]\n\
${bold_cyan}$(scm_char)${normal} \
$(scm_prompt_info)\
$(rbenv_version_prompt)\
${bold_white}\$${normal} "
}

THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"${white}"}

safe_append_prompt_command prompt_command
