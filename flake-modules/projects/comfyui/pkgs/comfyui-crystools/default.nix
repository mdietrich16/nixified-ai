{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "comfyui-crystools";
  version = "1.22.1";
  src = fetchFromGitHub {
    owner = "crystian";
    repo = "ComfyUI-Crystools";
    rev = "576b44b9b79e3bf4b5d50457a28924d89a42e7e1";
    hash = "sha256-PQavrg5NFIsQxl4GRW0y00OzmGw5A7c7llbfvCa1AOw=";
  };
  propagatedBuildInputs = with python3Packages; [
    deepdiff
    torch
    numpy
    pillow
    py-cpuinfo
    pynvml
    piexif
  ];
}
