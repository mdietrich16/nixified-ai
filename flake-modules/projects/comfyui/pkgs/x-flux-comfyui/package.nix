{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  dontBuild = true;
  dontConfigure = true;
  pname = "x-flux-comfyui";
  version = "0.0.1";
  src = fetchFromGitHub {
    owner = "XLabs-AI";
    repo = "x-flux-comfyui";
    rev = "c4af9818727eb4c134aeae471710b66fcd99d75a";
    sha256 = "sha256-/j5GBfA5Y70vRCquzUJ0DTCDgWaCC05ZJmXrpYj5hOo=";
  };
  propagatedBuildInputs = with python3Packages; [
    gitpython
    einops
    transformers
    diffusers
    sentencepiece
    opencv-python
  ];
}
