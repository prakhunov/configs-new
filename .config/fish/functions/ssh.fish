# Defined in - @ line 1
function ssh --description 'alias ssh term'
  set -lx TERM xterm-256color
  /usr/bin/ssh $argv
end
