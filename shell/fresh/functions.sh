conditionally_clear_zgen_cache() {
  ZGEN_CACHE=$(stat -c %Y ~/.zgen/init.zsh 2>/dev/null || echo 0)
  ZGEN_CONFIG=$(git log -1 --format="%at" -- shell/zsh/zgen.sh)
  ZGEN_CONFIG=${ZGEN_CONFIG:-0}
  ZGEN_DIRTY=$(git status --porcelain -- shell/zsh/zgen.sh | wc -l)

  # If the zgen file in the repo is dirty, always invalidate the cache
  # Do this by setting the cache timestamp
  if [ "$ZGEN_DIRTY" -gt "0" ]; then
    ZGEN_CACHE=-1
  fi

  # If the zgen file in the repo is newer than the one in ~/.zgen - trigger a reset
  # TODO: Doesn't help for development. Maybe an "or file is dirty" check
  if [ "$ZGEN_CONFIG" -gt "$ZGEN_CACHE" ]; then
    zsh -i -c 'zgen reset'
  fi
}

each_in_path() {
  # Fresh each file in the source directory
  # to one with the same name in the destination directory.
  #   $1  source directory
  #   $2  destination directory
  find "$1" -type f -print0 | while IFS= read -r -d $'\0' path; do
    file=`basename "$path"`
    fresh "$path" --file="$2/$file"
  done
}
