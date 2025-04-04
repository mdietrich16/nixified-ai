{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode rec {
  pname = "comfyui-clipseg";
  version = "unstable-2023-04-12";
  pyproject = true;
  installPhase = ''
    runHook preInstall
    mkdir -p $out
    # cp $src/custom_nodes/clipseg.py $out/__init__.py # https://github.com/biegert/ComfyUI-CLIPSeg/issues/12
    mkdir -p $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
    shopt -s dotglob
    shopt -s extglob
    cp -r $src/custom_nodes/clipseg.py $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}/__init__.py
    runHook postInstall
  '';
  propagatedBuildInputs = with python3Packages; [
    matplotlib
    matplotlib-inline
    numpy
    open-clip-torch
    opencv-python-headless
    pillow
    pytorch-lightning
    torch
    torchaudio
    torchdiffeq
    torchmetrics
    torchsde
    torchvision
    transformers
  ];
  src = fetchFromGitHub {
    owner = "time-river";
    repo = "ComfyUI-CLIPSeg";
    rev = "7f38951269888407de45fb934958c30c27704fdb";
    hash = "sha256-qqrl1u1wOKMRRBvMHD9gE80reDqLWn+vJEiM1yKZeUo=";
    fetchSubmodules = true;
  };
}
