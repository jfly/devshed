{
  mkShell,
  rustc,
  cargo,
  clippy,
  rust-analyzer,
  rustfmt,
  acl,
}:

mkShell {
  packages = [
    # Normal rust dependencies.
    rustc
    cargo
    clippy
    rust-analyzer
    rustfmt
    acl # Needed to build libfs
  ];
}
