{
  mkShell,
  pkgs,
}:

mkShell {
  packages = with pkgs; [
    gnumake
    yq
    pre-commit
    write-good
    nodePackages.prettier
    markdownlint-cli
    luajitPackages.tl
  ];
}
