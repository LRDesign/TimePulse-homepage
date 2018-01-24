let
  pkgs = import <nixpkgs> {};
  ruby = pkgs.ruby_2_4;
  bundler = pkgs.bundler.override { inherit ruby; };
in
pkgs.stdenv.mkDerivation {
  name = "timepulse.io";
  src = ./.;

  buildInputs = [bundler ruby pkgs.postgresql93 pkgs.imagemagick];
}
