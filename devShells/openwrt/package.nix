{ pkgs }:

# https://wiki.nixos.org/wiki/OpenWRT#OpenWRT_buildroot
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    git
    pkg-config
    ncurses
    unzip
    (python3.withPackages (ps: [ ps.setuptools ]))
    cdrtools
    swig
  ];
  hardeningDisable = [ "all" ];
}
