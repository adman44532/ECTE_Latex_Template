{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };

    outputs = { nixpkgs,  ... }: let
        eachSys = nixpkgs.lib.genAttrs  [
            "aarch64-darwin"
            "aarch64-linux"
            "x86_64-darwin"
            "x86_64-linux"
            "i686-darwin"
            "i686-linux"
        ];
    in {
        devShells = eachSys (system: let
            pkgs = nixpkgs.legacyPackages.${system};
        in {
            default = pkgs.mkShell {
                buildInputs = let
                    texlive = pkgs.texlive.combine {
                        inherit (pkgs.texlive)
                        amsmath
                        caption
                        changepage
                        datetime
                        etoolbox
                        fmtcount
                        fancyhdr
                        listings
                        multirow
                        paralist
                        pdflscape
                        setspace
                        scheme-basic
                        titlesec
                        url
                        xkeyval
                        ;
                    };
                in builtins.attrValues {
                    inherit texlive;
                };
            };
        });
    };

}

