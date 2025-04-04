{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode rec {
  pname = "comfyui-inspire-pack";
  version = "v1.2.9";
  src = fetchFromGitHub {
    owner = "ltdrdata";
    repo = "ComfyUI-Inspire-Pack";
    rev = "9d179f0193875c6d018ba5debcd67639f9fbdf01";
    hash = "sha256-VUEQj74Kr4AebV7OOSlmLqHEkJOqaARvo4dwz0gMAzc=";
  };
  pyproject = false;
  installPhase = ''
    runHook preInstall
    mkdir -p $out
    mkdir -p $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
    shopt -s dotglob
    shopt -s extglob
    cp -r ./!($out|$src) $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
    cp $src/resources/prompt-builder.yaml.example $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/resources/prompt-builder.yaml
    runHook postInstall
  '';
  propagatedBuildInputs = with python3Packages; [
    matplotlib
    cachetools
    numpy
    webcolors
    opencv-python-headless
  ];
}
