let
  projectDir = (toString ./.);
  pkgs = (import (builtins.fetchTarball {
    name = "nixpkgs-unstable";
    url = "https://github.com/nixos/nixpkgs/archive/a25df4c2b79c4343bcc72ad671200e5a3e286c41.tar.gz";
    sha256 = "1pl0nprpgw0cz1nnvf036k9r584ryq175i5av5wmmfdr7gisg9zr";
  }) {}) ;
in
pkgs.mkShell {
  shellHook = ''
  '';

  RUBYOPT = "-W:no-deprecated -W:no-experimental -W0";

  buildInputs = with pkgs; [
    ruby_2_7
    zlib
    libxml2
    nodejs
    yarn
    circleci-cli
  ];
}
