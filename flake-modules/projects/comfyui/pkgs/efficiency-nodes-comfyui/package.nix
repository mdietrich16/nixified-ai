{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
comfyuiPackages.comfyui.mkComfyUICustomNode {
  pname = "efficiency-nodes-comfyui";
  version = "0.0.1";
  src = fetchFromGitHub {
    owner = "jags111";
    repo = "efficiency-nodes-comfyui";
    rev = "3ead4afd120833f3bffdefeca0d6545df8051798";
    sha256 = "sha256-qMVGoPSVXx2tV9vxfOHui7yGj3CtHAJd0Hsp6GjD37w=";
  };
  propagatedBuildInputs = with python3Packages; [
    simpleeval
  ];
}
