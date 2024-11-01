{
  pkgs ? import <nixpkgs> { },
}:

let
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
    tex
  ];
}
