if [ "$SESSION_TRANSPORT" = "ssh" ]; then
  PROMPT="[%n@%m %{$fg_bold[cyan]%}%c%{$reset_color%}] %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}${ret_status}% %{$reset_color%}"
fi
