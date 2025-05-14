{ config, pkgs, ... }:

with pkgs; {
  env = {
    LD_LIBRARY_PATH = "${config.devenv.profile}/lib";
  };

  packages = [
    git
  ];

  languages.ruby.enable = true;
  # Use a specific Ruby version since no .ruby-version file is found
  languages.ruby.version = "3.1.3";
}
