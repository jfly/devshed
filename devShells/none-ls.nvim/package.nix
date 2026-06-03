{
  mkShell,
  pkgs,
}:

mkShell {
  shellHook = ''
    echo -e "\e[0;32mWelcome to a none-ls.nvim dev shell!\e[0m"
    echo -e "\e[0;32mTo test with your own build of neovim, add the following to your .envrc:\e[0m"
    echo 'export VIMRUNTIME=$HOME/src/github.com/neovim/neovim/runtime'
    echo 'PATH_add "$HOME/src/github.com/neovim/neovim/build/bin"'
  '';
  packages = with pkgs; [
    gnumake
    yq
    pre-commit
    write-good
    prettier
    markdownlint-cli
    luajitPackages.tl
  ];
}
