#!/bin/sh
#
# zlib license
# Copyright (c) 2017 Victorien Elvinger
#

command -v 'cargo' > /dev/null 2>&1 &&
    export CARGO_HOME=${XDG_DATA_HOME:-$HOME'/.local/share'}'/cargo'
        # Cargo (Rust) - XDG fix

