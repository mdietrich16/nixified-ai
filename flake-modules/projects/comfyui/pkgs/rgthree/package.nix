{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  dontBuild = true;
  dontConfigure = true;
  pname = "rgthree";
  version = "0.0.1";
  src = fetchFromGitHub {
    owner = "rgthree";
    repo = "rgthree-comfy";
    rev = "f044a9dbb3fc9de55c6244d616d386986add3072";
    sha256 = "sha256-XskVARM5aiLSuJ/k91OEXO3XuyyHvpJIolXYY893HaQ=";
  };
}
