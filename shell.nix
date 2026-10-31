{ pkgs ? import <nixpkgs> {}
, cmake ? pkgs.cmake
, curl ? pkgs.curl
, nasm ? pkgs.nasm
, llvm ? pkgs.llvm # right now needs LLVM <17
}:
pkgs.mkShell {
  packages = [
    cmake
    llvm
    nasm
    curl
  ];
}
