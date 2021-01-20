{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "gomodrun";
  src = builtins.fetchurl {
    url = "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.1/gomodrun_0.4.1_linux_amd64.tar.gz";
    sha256 = "16pq9z2fl7qnz6z56bv57snin5iq1lg3nqclzi3bp3p1sqfkcbyi";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxvf $src -C $out/bin/ gomodrun
  '';
}
