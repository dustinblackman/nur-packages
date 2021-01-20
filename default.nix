{ pkgs ? import <nixpkgs> { } }:

{
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

  gomodrun = pkgs.callPackage ./pkgs/gomodrun.nix { };
}
