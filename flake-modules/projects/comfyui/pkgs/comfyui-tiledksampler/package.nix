{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "comfyui-tiledksampler";
  version = "v0.0.1";
  src = fetchFromGitHub {
    owner = "BlenderNeko";
    repo = "ComfyUI_TiledKSampler";
    rev = "2fd9b05d97ecffc604c642ffbb40220b182966b2";
    hash = "sha256-Qp1LHlPbUQNKXw2ZVgEgjTvPDMjyqH+QAx47SRc9Yr8=";
  };
  pyproject = false;
}
