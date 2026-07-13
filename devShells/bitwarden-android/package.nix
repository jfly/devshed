# <https://contributing.bitwarden.com/getting-started/tools/>
# <https://github.com/bitwarden/android/blob/main/.github/actions/setup-android-build/action.yml>
{ mkShell, pkgs }:
mkShell {
  packages = [
    pkgs.gradle
    pkgs.ruby
    pkgs.openjdk
    pkgs.sdkmanager
  ];

  shellHook = ''
    export ANDROID_HOME=$HOME/Android/Sdk
    mkdir -p "$ANDROID_HOME"

    cat <<EOF
    Welcome to the bitwarden android devshell!

    Follow upstream's instructions to create a `user.properties` file: <https://github.com/bitwarden/android/tree/main#setup>.

    To build the app:

      $ sdkmanager --licenses # You may need to accept Android licenses.
      $ ./gradlew app:assembleDebug
    EOF
  '';
}
