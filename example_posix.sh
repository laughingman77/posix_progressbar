#!/bin/sh

. ./progressbar.sh || exit 1

done_so_far=0
total=10

while [ "$done_so_far" -lt "$total" ]; do
      done_so_far=$((done_so_far + 1))
      todo=$((total - done_so_far))
      progressbar --bar-width=50 "$done_so_far" "$total" "$todo left to complete" >&2
      sleep 1
done
echo >&2
