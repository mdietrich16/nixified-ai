{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "comfyui-impact-subpack";
  version = "v1.2.9";
  src = fetchFromGitHub {
    owner = "ltdrdata";
    repo = "ComfyUI-Impact-Subpack";
    rev = "74db20c95eca152a6d686c914edc0ef4e4762cb8";
    hash = "sha256-km4QCsGkoNcEpG6tzmyNrgPoF+HYDnkHREYb+A/oMww=";
  };
  pyproject = false;
  propagatedBuildInputs = with python3Packages; [
    matplotlib
    ultralytics
    numpy
    opencv-python-headless
    dill
  ];
}
