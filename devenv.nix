{ config, pkgs, ... }:

with pkgs; {
  env = {
    LD_LIBRARY_PATH = "${config.devenv.profile}/lib";
  };

  packages = [
    git
  ];

  languages.ruby.enable = true;
  languages.ruby.version = "3.2.3";
}
