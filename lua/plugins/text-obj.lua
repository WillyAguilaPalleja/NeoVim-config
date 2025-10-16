return {
  {
    "kana/vim-textobj-user",
    lazy = true,
  },
  {
    "kana/vim-textobj-indent",
    dependencies = { "kana/vim-textobj-user" },
    event = "VeryLazy",
  },
}
