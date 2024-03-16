# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, pkgs
, lib
, fetchurl
, installShellFiles
}:
let
  shaMap = {
    x86_64-linux = "1916ff99559ibkx1k3fb7xc4617plqfaiqypqlrwg31s440mcnfw";
    aarch64-linux = "1nyn23bbvkh7m7n68iipj4k0fczzqhniszadn3wrk9v860n79cqb";
    x86_64-darwin = "1xq6fwhsiq3zv8n1dzrvw7r3x0vymjidai90ma48j4vrxlj3rjvc";
    aarch64-darwin = "01zn8iv7lfkj9h8mds7mj5lcsy2a921xwrci33qfbgjnf89zalmi";
  };

  urlMap = {
    x86_64-linux = "https://github.com/dustinblackman/oatmeal/releases/download/v0.13.0/oatmeal_0.13.0_linux_amd64.tar.gz";
    aarch64-linux = "https://github.com/dustinblackman/oatmeal/releases/download/v0.13.0/oatmeal_0.13.0_linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/dustinblackman/oatmeal/releases/download/v0.13.0/oatmeal_0.13.0_darwin_amd64.tar.gz";
    aarch64-darwin = "https://github.com/dustinblackman/oatmeal/releases/download/v0.13.0/oatmeal_0.13.0_darwin_arm64.tar.gz";
  };
in
pkgs.stdenv.mkDerivation {
  pname = "oatmeal";
  version = "0.13.0";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./oatmeal $out/bin/oatmeal
    patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) $out/bin/oatmeal
    mkdir -p $out/share/doc/oatmeal/copyright
    cp LICENSE $out/share/doc/oatmeal/copyright/
    cp THIRDPARTY.html $out/share/doc/oatmeal/copyright/
    installManPage ./manpages/oatmeal.1.gz
    installShellCompletion ./completions/*
  '';

  system = system;

  meta = {
    description = "Terminal UI to chat with large language models (LLM) using backends such as Ollama, and direct integrations with your favourite editor like Neovim!";
    homepage = "https://github.com/dustinblackman/oatmeal";
    license = lib.licenses.mit;

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
