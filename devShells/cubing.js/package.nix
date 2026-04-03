{
  mkShell,
  gnumake,
  nodejs,
  bun,
}:

mkShell {
  packages = [
    gnumake
    nodejs
    bun
  ];
}
