{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghcjsHEAD" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, deepseq, ghcjs-base, react-flux, stdenv
      , text, time, transformers
      }:
      mkDerivation {
        pname = "hseverywhere";
        version = "0.1.0.0";
        src = ./.;
        isLibrary = false;
        isExecutable = true;
        executableHaskellDepends = [
          base deepseq ghcjs-base react-flux text time transformers
        ];
        buildDepends = [pkgs.haskellPackages.cabal-install];
        license = stdenv.lib.licenses.mit;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  ghcjsbase = if compiler == "default"
                 then haskellPackages.ghcjs-base-stub
                 else haskellPackages.ghcjs-base;

  # add missing ghcjs-base to react-flux
  reactFluxFixed = haskellPackages.react-flux.override (args: args // {
    mkDerivation = expr: args.mkDerivation (expr // {
        libraryHaskellDepends = expr.libraryHaskellDepends ++ [ghcjsbase];
    });
  });

  drv = haskellPackages.callPackage f { react-flux = reactFluxFixed; };

in

  if pkgs.lib.inNixShell then drv.env else drv
