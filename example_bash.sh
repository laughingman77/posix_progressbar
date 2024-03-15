#!/bin/bash

source progressbar.sh || exit 1

done_so_far=0
total=10

while [ "$done_so_far" -lt "$total" ]; do
      done_so_far=$((done_so_far + 1))
      todo=$((total - done_so_far))
      progressbar --bar-width=30 "$done_so_far" "$total" "$todo left to complete"
      sleep 1
done
echo >&2
