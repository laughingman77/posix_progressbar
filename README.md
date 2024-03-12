# posix_progressbar

A fully Posix compliant progress bar.

The bar progress is calculated by the input of two integers (done and total), displaying percentage completed alongside the bar.

You can add a optional string be displayed after the progress bar and percent done.

The bar dynamically autosizes to the terminal width of the terminal and crops the length of the progress bar and text displayed with ellipsis.

The default width of the progress bar is 30 characters, but you can override that with the `--bar-width` option.

## Installation

Clone the repository and copy the `progressbar.sh` script into your codebase.

```bash
git clone git@github.com:laughingman77/posix_progressbar.git
```

Or download the file from https://github.com/laughingman77/posix_progressbar/blob/main/progressbasr.sh.

## Parameters

* `--bar-width=...` - set the length of the ProgressBar (default 30)
* `$1` - count of progress so far
* `$2` - total value of steps to complete
* `$3` - (optional) string to display after the ProgressBar

## Example usage

File: `example.sh`:

```bash
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
```

Result:

```text
$ ./example.sh 
[##########........................................] (20%) 8 left to complete
```