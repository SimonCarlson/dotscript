Add dotfiles to be backed up to `files`. Tilde expansion is supported.

Execute `implode.sh` to pull files into the repository. Execute `explode.sh` to copy files to their intended place. Neither scripts makes sure the files or destinations actually exists, they just fail if that is not the case.

### TODO
- Files are only saved with their basename. This can cause conflicts in cases of files at different paths having the same name
