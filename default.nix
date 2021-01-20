# DO NOT EDIT. This file is auto generated by ./scripts/generate-default.sh
{ pkgs ? import <nixpkgs> { } }:

{
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

  fetch-hls = pkgs.callPackage ./pkgs/fetch-hls.nix { };
  gomodrun = pkgs.callPackage ./pkgs/gomodrun.nix { };
}
