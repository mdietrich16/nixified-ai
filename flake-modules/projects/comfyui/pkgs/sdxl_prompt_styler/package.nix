{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  dontBuild = true;
  dontConfigure = true;
  pname = "sdxl_prompt_styler";
  version = "v0.0.1";
  src = fetchFromGitHub {
    owner = "twri";
    repo = "sdxl_prompt_styler";
    rev = "51068179927f79dce14f38c6b1984390ab242be2";
    hash = "sha256-PXyasD4e4HYHiTvdWNOSaI9jcjZmSRxDWKPdIpm9hAQ=";
  };
}
