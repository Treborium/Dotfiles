export NNN_TMPFILE="/tmp/nnn"

function n() {
  nnn "$@"

  if [ -f $NNN_TMPFILE ]; then
    . $NNN_TMPFILE
    rm $NNN_TMPFILE
  fi
}

function open() {
  nohup xdg-open "$1" </dev/null &>/dev/null &
}

function fzf_search_for_directory() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

function mfdir() {
  mkdir "$1"
  cd "$1"
}