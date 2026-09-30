{
  languages = {

    catala_en = {
      extensions = ["catala_en", "catala_en.md"],
      grammar = {
        source = {
          git = {
            git = "https://github.com/CatalaLang/tree-sitter-catala.git",
            rev = "6c70cabc86f293d6eb3209275efc1d080a97d7cc",
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
            git = "https://github.com/CatalaLang/tree-sitter-catala.git",
            rev = "6c70cabc86f293d6eb3209275efc1d080a97d7cc",
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
            rev = "d22d738be2c6f84aebb357945859b70f3b5a7525",
            subdir = "catala_pl",
          }
        }
      }
    }

  }
}
