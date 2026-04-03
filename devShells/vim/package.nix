{
  mkShell,
  vim,
  bear,
}:

mkShell {
  inputsFrom = [ vim ];
  packages = [ bear ];
  shellHook = ''
    cat <<EOF
    Welcome to the vim devshell

    To build:

      $ ./configure
      $ make

    To create a 'compile_commands.json' (for the clangd LSP):

      $ make clean && bear -- make
    EOF
  '';
}
