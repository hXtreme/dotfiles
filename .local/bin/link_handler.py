#! /bin/python

from os import execlp
from sys import argv, stderr
import subprocess
import shutil

LINK_HANDLERS = {
    "firefox": "/usr/bin/firefox",
    "links": "/usr/bin/links",
    "surf": "/usr/local/bin/surf",
    "vlc": "/usr/bin/vlc",
}

LINK_HANDLER_STR = "\n".join(LINK_HANDLERS.keys())

if __name__ == "__main__":
    if len(argv) < 2:
        print("Usage:\n", "\tlink-handler [program-args] link", sep="", file=stderr)
        exit(1)
    # Now choose the link handler
    run = subprocess.run(
        ["-b", "-p", "link-handler"],
        executable="/usr/local/bin/dmenu",
        capture_output=True,
        text=True,
        input=LINK_HANDLER_STR,
    )
    if run.returncode != 0:
        print("Abort!", file=stderr)
        exit(0)
    handler = run.stdout.strip()
    args = argv[1:]
    if handler in LINK_HANDLERS:
        execlp(LINK_HANDLERS[handler], LINK_HANDLERS[handler], *args)
    elif shutil.which(handler):
        execlp(handler, handler, *args)
    else:
        print("Handler not found!", file=stderr)
        exit(1)
