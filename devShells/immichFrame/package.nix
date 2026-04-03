{
  mkShell,
  gnumake,
  nodejs,
  dotnetCorePackages,
}:

mkShell {
  packages = [
    gnumake
    nodejs
    dotnetCorePackages.sdk_8_0
  ];
}
