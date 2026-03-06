let
  pkgs = import (fetchTarball "channel:nixos-25.11") { };
  tex = (
    pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-small
        latexmk
        moderncv
        academicons
        arydshln
        fontawesome5
        multirow
        ;
    }
  );
in

pkgs.mkShell {
  buildInputs = [
    pkgs.git
    tex
  ];
}
