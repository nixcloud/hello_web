with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "example-${version}";
  version = "0.0.1";

  shellHook = ''
    echo " --- welcome ---"
    echo " now type: s"
    alias s="php -S localhost:8000"
  '';


  buildInputs = [ php ];
}
