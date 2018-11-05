# commands grouped in parens (subshell) are run in a separate process
tar -cf - . | (cd /newdir; tar -xpf -)


# code block (does not create a new process)
cd /some/directory || {
    echo could not change to /some/directory! >&2
    echo you lose! >&2
    exit 1
}
