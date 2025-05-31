{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  dontBuild = true;
  dontConfigure = true;
  pname = "comfyui-tooling-nodes";
  version = "unstable-2024-06-20";
  src = fetchFromGitHub {
    owner = "Acly";
    repo = "comfyui-tooling-nodes";
    rev = "aff32e8da6db5db73bc6f84b30c87862e211544c";
    hash = "sha256-6i1PGog8ZNBwO9FDFjneWRCx8Cn6N1N1hZhzI64GLNk=";
  };
}
