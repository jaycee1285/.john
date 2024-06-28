{ config, pkgs, ... }:

programs.vscode = {
      enable = true;
      package = pkgs.vscodium-fhs;

      mutableExtensionsDir = true;
      extensions =
        with pkgs.vscode-extensions;
        [
          kahole.magit

          cab404.vscode-direnv

          (pkgs.callPackage ./theme.nix { } config.themes.colors)

          vscodevim.vim

          matklad.rust-analyzer
          redhat.vscode-yaml
          jnoortheen.nix-ide
          dhall.dhall-lang
          hashicorp.terraform
          timonwong.shellcheck
          bungcip.better-toml
          haskell.haskell