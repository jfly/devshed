{ lib, ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      devShells = lib.filesystem.packagesFromDirectoryRecursive {
        inherit (pkgs) callPackage;
        directory = ../devShells;
      };
    };
}
