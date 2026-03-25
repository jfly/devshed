{ mkShell, nodejs }:

mkShell {
  packages = [ nodejs ];

  meta.homepage = "https://github.com/rianadon/opensprinkler-card";
}
