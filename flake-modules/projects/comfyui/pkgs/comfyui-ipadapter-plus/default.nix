{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "ComfyUI_IPAdapter_plus";
  version = "unstable-2024-06-05";
  src = fetchFromGitHub {
    owner = "cubiq";
    repo = "ComfyUI_IPAdapter_plus";
    rev = "f904b4c3c3adbda990f32b90eb52e1924467c9ef";
    hash = "sha256-u3/8CLeJx1QrHPkvqCc6g87SlCR7zRCwnlux/Uz5Grw=";
  };
  propagatedBuildInputs = with python3Packages; [
    insightface
  ];
}
