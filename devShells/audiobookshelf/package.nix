{
  mkShell,
  nodejs,
  ffmpeg,
}:

mkShell {
  packages = [
    nodejs
    ffmpeg
  ];
}
