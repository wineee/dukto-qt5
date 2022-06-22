{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  buildInputs = with pkgs; [
    pcre
    libnotify
    util-linux.dev
    libselinux.dev
    libsepol.dev
    qt5.full
  ];

  nativeBuildInputs = with pkgs; [
    gcc
    gdb
    cmake
    ninja
    clang-tools
    pkg-config
    qtcreator
    qt5.wrapQtAppsHook
  ];
}

