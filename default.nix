{ pkgs ? import <nixpkgs> { } }:
  pkgs.rustPlatform.buildRustPackage {
    pname = "rails-new";
    version = "0.4.1";
    cargoLock.lockFile = ./Cargo.lock;

    # Use source files without version control noise
    src = pkgs.lib.cleanSource ./.;

    # Packages needed at runtime
    # buildInputs = with pkgs; [ git xorg.libxcb openssl zlib ];

    # Packages needed during the build
    # nativeBuildInputs = with pkgs; [ python311 ];
  }
