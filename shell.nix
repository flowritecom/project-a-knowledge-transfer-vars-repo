let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };

in with pkgs;

mkShell {
  name = "python-env";
  buildInputs = (with pkgs; [
    terraform
    direnv
    python3.pkgs.venvShellHook
    python3.pkgs.virtualenvwrapper
    python3.pkgs.wheel
    python3.pkgs.boto3
    python3.pkgs.pip
    python3
    python3.pkgs.setuptools
    awscli
    dhall-json
    dhall-nix
    dhall
    jq
    python3.pkgs.virtualenv
  ]);
  venvDir = ".venv";
  src = null;
  postVenv = ''
    unset SOURCE_DATE_EPOCH
    export TMPDIR=/tmp
  '';
  TMPDIR = "/tmp";

  shellHook = ''
    export PATH=$PWD/$venvDir/bin:$PATH
    eval "$(direnv hook $SHELL)"
    unset SOURCE_DATE_EPOCH
    export PYTHONPATH=$PWD/$venvDir/${python3.sitePackages}:$PYTHONPATH
    if test ! -d $venvDir; then
      virtualenv $venvDir
    fi
    source ./$venvDir/bin/activate
  '';
}
