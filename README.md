Catala Code Formatting tool
===========================

`catala-format` is a code formatter for Catala.

This tool is based on [topiary](https://github.com/tweag/topiary), a
generic formatting tool.

## Installation

Pre-requisite: [opam package manager](https://opam.ocaml.org/).

### `opam`

Run `opam install catala-format` in a terminal.

### From sources

Run `opam install .` in the root directory after cloning the
repository.

## Usage

Run `catala-format <CATALA_FILE>`

*Note:* it may be slow the first time invoking the command at it
requires downloading and compiling the Catala's tree-sitter grammar in
background.

## Integration in editors

### VSCode

`catala-format` is linked to the `Format document` VSCode command in the
[Catala extension](https://github.com/CatalaLang/catala-language-server/).
Installing `catala-lsp` is required.

### Emacs

An Emacs plugin is present in `emacs/catala-format.el`. This plugin is
installed in the `opam`'s Emacs shared plugins directory, i.e.,
`<opam_dir>/share/emacs/site-lisp/`. The default `<opam_dir>`
can be found by invoking the `opam var prefix` shell command.

This script depends on the `catala-ts-mode.el` plugin which can be
found in root directory of the [Catala tree-sitter
repository](https://github.com/CatalaLang/tree-sitter-catala) which
needs to be copied over manually (e.g., in the same opam directory).

An example of `.emacs` configuration would look like:
```elisp
;; Change the <opam_dir> path by yours - find it with
(add-to-list 'load-path "~/<opam_dir>/share/emacs/site-lisp")

(require 'catala-ts-mode)
(require 'catala-format)

;; Attempt to format the Catala file when saving
(add-hook 'before-save-hook 'catala-format-before-save)
```

## Local grammars

`catala-format` runs topiary with the configuration installed from
`catala.ncl`, which pins each language's tree-sitter grammar to a git
repository and revision; topiary fetches and builds the grammar on first
use and caches it in `~/.cache/topiary/<language>/<revision>.so`.

To use a grammar from a local clone of tree-sitter-catala, for instance
a revision that is not published yet, set `CATALA_FORMAT_CONFIG` to a
configuration that overrides the pinned source. Keep it out of git:
`catala.local.ncl` at the root of this repository is ignored.

```nickel
# catala.local.ncl
(import "catala.ncl") & {
  languages.catala_pl.grammar.source.git.git
    | force = "file:///path/to/tree-sitter-catala",
}
```

```sh
export CATALA_FORMAT_CONFIG=$PWD/catala.local.ncl
catala-format file.catala_pl       # or: cd tests && bash run_test.sh
```

The `rev` field can be overridden the same way. The cache is keyed by
language and revision only, so delete `~/.cache/topiary/<language>` after
changing the source of a revision that was already built.

## License

The code contained in this repository is released under the [Apache
license (version 2)](LICENSE.txt) unless another license is explicited
for a sub-directory.
