{ project_dir ? (toString ./.)
, pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
  shellHook = ''
  '';

  RUBYOPT = "-W:no-deprecated -W:no-experimental -W0";

  buildInputs = with pkgs; [
    ruby_2_7

    zlib
    libxml2

    # Node JS dependencies, used to compile the JS parts.
    nodejs-10_x
    yarn

    #to boot the db and services vm
    nixops
  ];
}
