show_userhost() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_userhost_icon" "󰒋")
  color=$(get_tmux_option "@catppuccin_userhost_color" "$thm_magenta")
  text=$(get_tmux_option "@catppuccin_userhost_text" "#(whoami)#[fg=$thm_magenta]@#[fg=$thm_fg]#H")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
