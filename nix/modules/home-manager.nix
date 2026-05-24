# nix/modules/home-manager.nix — auto-generated from num-traits.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.num-traits; in {
  options.programs.num-traits = {
    enable = lib.mkEnableOption "num-traits";
    package = lib.mkOption { type = lib.types.package; default = pkgs.num-traits or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
