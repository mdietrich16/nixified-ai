{
  # I just took these from https://github.com/NixOS/nixpkgs/pull/268378 but I'm not sure about doing it this way
  custom-scripts-autocomplete-text ? (
    builtins.fetchurl {
      url = "https://gist.githubusercontent.com/pythongosssss/1d3efa6050356a08cea975183088159a/raw/a18fb2f94f9156cf4476b0c24a09544d6c0baec6/danbooru-tags.txt";
      sha256 = "15xmm538v0mjshncglpbkw2xdl4cs6y0faz94vfba70qq87plz4p";
    }
  ),
  custom-scripts-data ? {
    name = "CustomScripts";
    logging = true;
    workflows = {
      directory = "/home/max/Documents/ComfyUI-Workflows";
    };
  },
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
  writeText,
  lib,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode (
  let
    pysssss-config = writeText "pysssss.json" (lib.generators.toJSON { } custom-scripts-data);
  in
  rec {
    dontConfigure = true;
    dontBuild = true;
    pname = "comfyui-custom-scripts";
    version = "v0.0.1";
    src = fetchFromGitHub {
      owner = "pythongosssss";
      repo = "ComfyUI-Custom-Scripts";
      rev = "9f7b3215e6af317603056a9a1666bf6e83e28835";
      hash = "sha256-GYlAUqz4Buzl7yqckvG+JFDQ+rVC5BKc2K6ccr2prLE=";
    };
    pyproject = false;
    installPhase = ''
      runHook preInstall
      mkdir -p $out
      mkdir -p $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
      shopt -s dotglob
      shopt -s extglob
      cp -r ./!($out|$src) $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
      cp ${pysssss-config} $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/pysssss.json
      mkdir -p $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/user
      cp ${custom-scripts-autocomplete-text} $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/user/autocomplete.txt
      # Copy the patched version separately.  See
      # https://discourse.nixos.org/t/solved-how-to-apply-a-patch-in-a-flake/27227/4
      # for reference.  Perhaps a better reference exists?
      # But this doesn't work for reasons I can't understand.  I get permission
      # denied.
      # cp pysssss.py $out/
      # It seems that I need to grant myself write permissions first.  Is any of
      # this documented anywhere?
      # chmod -R +w $out
      cp pysssss.py $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/
      cp __init__.py $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/
      # Put it back I guess?
      # chmod -R -w $out/
      runHook postInstall
    '';
    patches = [
      ./custom-scripts-remove-js-install-step.patch
    ];
  }
)
