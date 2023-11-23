# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "oatmeal";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/oatmeal/releases/download/v0.5.0/oatmeal_0.5.0_linux_amd64.tar.gz";
    sha256 = "0c4i60xaqakr97mnva105hgp7x9a1qk8xyfzr2lddbizijzpxd2h";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxf $src -C $out/bin/ oatmeal
  '';
}

