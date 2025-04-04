{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "comfyui-wd14-tagger";
  version = "v0.0.1";
  src = fetchFromGitHub {
    # FIXME: Also apply path as in ../comfyui-custom-scripts/default.nix
    owner = "mdietrich16";
    repo = "ComfyUI-WD14-Tagger";
    rev = "f7c7db049337e34f57e06386ee0ea0f7209d22d5";
    hash = "sha256-DG1lnqZqVQeLif5L6B0SlSUOs7dte814VN3wjmAWMFk=";
  };
  propagatedBuildInputs = with python3Packages; [
    onnxruntime
  ];
}
