# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "cf-alias";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/cf-alias/releases/download/v0.1.4/cf-alias_0.1.4_linux_amd64.tar.gz";
    sha256 = "0xqzzci1vyf9hkg9v1f665ijlgmp7yj3i0agqcirzfcwp6i9l7yj";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxf $src -C $out/bin/ cf-alias
  '';
}

