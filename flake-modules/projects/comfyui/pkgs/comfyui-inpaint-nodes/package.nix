{
  comfyuiPackages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "comfyui-inpaint-nodes";
  version = "unstable-2024-06-14";
  src = fetchFromGitHub {
    owner = "Acly";
    repo = "comfyui-inpaint-nodes";
    rev = "9927f44cb4a9878f1737cbabf8a29d2fc8182d0f";
    hash = "sha256-FS+wDpDWboArBK2pq5Ye+eL3jNkxBoEnYnXt/TxKcKc=";
  };
}
