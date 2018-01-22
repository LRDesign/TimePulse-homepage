with (import <nixpkgs> {});
stdenv.mkDerivation {
  name = "timepulse.io";
  src = ./.;

  buildInputs = [bundler ruby_2_4 postgresql93 imagemagick];
}
