{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.pkg-config
  ];

  shellHook = ''
    export LIBRARY_PATH=${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ]}
    export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ]}
    export LIBCLANG_PATH=${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ]}
    export NIX_LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ]}
    export NIX_LD = lib.fileContents "${pkgs.stdenv.cc.cc}/nix-support/dynamic-linker";

    echo "LIBRARY_PATH is set to: $LIBRARY_PATH"
    echo "LD_LIBRARY_PATH is set to: $LIBRARY_PATH"
    echo "LIBCLANG_PATH is set to: $LIBCLANG_PATH"
    echo "NIX_LD_LIBRARY_PATH is set to: $NIX_LD_LIBRARY_PATH"
  '';
}
