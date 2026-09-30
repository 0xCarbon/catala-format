{
  languages = {

    catala_en = {
      extensions = ["catala_en", "catala_en.md"],
      grammar = {
        source = {
          git = {
            # Branch teko/fixes of the 0xCarbon fork, which lexes the
            # multi-word keywords as whole words like the compiler, until
            # it is available upstream. See "Local grammars" in README.md
            # to build it from a local clone.
            git = "https://github.com/0xCarbon/tree-sitter-catala.git",
            rev = "b222e1118db0a45db4422a8183fdb346ac67de11",
            subdir = "catala_en",
          }
        }
      }
    },

    catala_fr = {
      extensions = ["catala_fr", "catala_fr.md"],
      grammar = {
        source = {
          git = {
            # Branch teko/fixes of the 0xCarbon fork, which lexes the
            # multi-word keywords as whole words like the compiler, until
            # it is available upstream. See "Local grammars" in README.md
            # to build it from a local clone.
            git = "https://github.com/0xCarbon/tree-sitter-catala.git",
            rev = "b222e1118db0a45db4422a8183fdb346ac67de11",
            subdir = "catala_fr",
          }
        }
      }
    },

    catala_pl = {
      extensions = ["catala_pl", "catala_pl.md"],
      grammar = {
        source = {
          git = {
            # Branch teko/fixes of the 0xCarbon fork, whose Polish
            # keywords match the compiler's lexer, until it is available
            # upstream. See "Local grammars" in README.md to build it from
            # a local clone.
            git = "https://github.com/0xCarbon/tree-sitter-catala.git",
            rev = "b222e1118db0a45db4422a8183fdb346ac67de11",
            subdir = "catala_pl",
          }
        }
      }
    }

  }
}
