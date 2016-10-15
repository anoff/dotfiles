#!/bin/bash
# create symlinks for all the stuff in here

# little helper to get proper paths
_get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

if [ "$1" == "--unlink" ]; then
  echo "Unlinking..";
else
  echo "Creating symlinks..";
fi

for f in .[!.]*; do
  if [ "$f" == ".git" ] || [ "$f" == ".DS_Store" ] || [ "$f" == ".gitignore" ]; then
    # echo "be skipping $f"
    continue; #   skip .git dir
  fi
  _fs=$(_get_abs_filename $f)
  _ft=$(_get_abs_filename ~/$f)

  if [ "$1" == "--unlink" ]; then
    unlink ~/$f
    _retval=$?;
  elif [ ! -d $_ft ]; then
    ln -s $_fs $_ft
    _retval=$?;
  else
    echo "$_ft exists, skipping..";
    _retval=1;
  fi

  if [ $_retval -eq 0 ]; then
    echo "$_fs > $_ft done.."
  fi

done
unset _fs _ft _retval;
