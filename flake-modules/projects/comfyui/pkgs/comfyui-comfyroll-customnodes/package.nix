{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  dontBuild = true;
  dontConfigure = true;
  pname = "comfyui-comfyroll-customnodes";
  version = "0.0.1";
  src = fetchFromGitHub {
    owner = "Suzie1";
    repo = "ComfyUI_Comfyroll_CustomNodes";
    rev = "d78b780ae43fcf8c6b7c6505e6ffb4584281ceca";
    sha256 = "sha256-+qhDJ9hawSEg9AGBz8w+UzohMFhgZDOzvenw8xVVyPc=";
  };
}
