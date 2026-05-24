# nix/modules/nixos.nix — auto-generated from num-traits.caixa.lisp
# description: "Numeric traits for generic mathematics"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.num-traits;
in {
  options.services.num-traits = {
    enable = lib.mkEnableOption "num-traits";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.num-traits or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
