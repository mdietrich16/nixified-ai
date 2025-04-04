{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "ComfyUI_SimpleTiles";
  version = "v0.0.1";
  src = fetchFromGitHub {
    owner = "kinfolk0117";
    repo = "ComfyUI_SimpleTiles";
    rev = "40723fae66a7f46de8ac8e812fd175a53c671503";
    hash = "sha256-b/ohM3MwFNa70X+bcIq9WGYbqAAFqIHRZ2L9HjtkQN8=";
  };
}
