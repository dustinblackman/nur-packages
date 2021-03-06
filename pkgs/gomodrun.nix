# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "gomodrun";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/gomodrun/releases/download/v0.4.3/gomodrun_0.4.3_linux_amd64.tar.gz";
    sha256 = "17j2acvc62iii9dyybh63jqblnyxz2nf7nsi264yrdwx0vhv94if";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxf $src -C $out/bin/ gomodrun
  '';
}

