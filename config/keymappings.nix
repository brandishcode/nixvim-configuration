{
  globals = { mapleader = " "; };

  keymaps = [
    {
      mode = "i";
      action = "<Esc>";
      key = "jj";
    }
    {
      mode = "n";
      action = "<Nop>";
      key = "<Space>";
    }
    {
      mode = "n";
      action = "o<Esc>";
      key = "o";
    }
    {
      mode = "n";
      action = "O<Esc>";
      key = "O";
    }
    {
      mode = "n";
      action = "<Cmd>Explore<Cr>";
      key = "<Leader>w";
    }
  ];
}
