# project-a-knowledge-transfer-vars-repo
Git versioned variable store

For development and to have dhall in path, we are using nix.
Follow installation instruction here
https://nixos.org/download.html

The pre-commit hook uses it as a wrapper
```bash
#! /usr/bin/env nix-shell
#! nix-shell shell.nix -i bash
set -euo pipefail
# see that it's not generic for all configs
# the creator ran out of time
dhall-to-json --file units/pav-tester.dhall --output json/pav-tester.json
```