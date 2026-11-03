{ pkgs     ? import <nixpkgs> {}
, cmake    ? pkgs.cmake
, curl     ? pkgs.curl
, nasm     ? pkgs.nasm
, libxml2  ? pkgs.libxml2
  # right now needs LLVM 14-16
, llvm     ? pkgs.llvm
, libclang ? pkgs.libclang
}:
pkgs.mkShell {
  packages = [
    cmake
    curl
    nasm
    libxml2
    llvm
    libclang
  ];
}
