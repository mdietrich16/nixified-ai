{
  comfyuiPackages,
  python3Packages,
  fetchFromGitHub,
}:
let
  fetchFromUrl = import <nix/fetchurl.nix>;
  mediapipe = python3Packages.callPackage ../../../../packages/mediapipe { };
in
comfyuiPackages.comfyui.mkComfyUICustomNode rec {
  dontConfigure = true;
  dontBuild = true;
  pname = "comfyui-controlnet-aux";
  version = "unstable-2024-08-28";
  pyproject = true;
  src = fetchFromGitHub {
    owner = "Fannovel16";
    repo = "comfyui_controlnet_aux";
    rev = "83463c2e4b04e729268e57f638b4212e0da4badc";
    sha256 = "sha256-DPK74Da6J1yVN4te6euGVhrC32wb26BW18wH6WFl0h4=";
    fetchSubmodules = true;
  };
  propagatedBuildInputs = with python3Packages; [
    addict
    albumentations
    einops
    filelock
    ftfy
    fvcore
    importlib-metadata
    matplotlib
    mediapipe
    numpy
    omegaconf
    onnxruntime
    opencv4
    pillow
    python-dateutil
    pyyaml
    scikit-image
    scikit-learn
    scipy
    svglib
    torch
    torchvision
    trimesh
    yacs
    yapf
  ];

  # for some reason, this custom node has its own collection of models, so we
  # just go with it and put them where it expects, not bothering to add them
  # as general model dependencies.
  # TODO: there are probably more models to add
  installPhase =
    let
      yolox_l = fetchFromUrl {
        url = "https://huggingface.co/yzd-v/DWPose/resolve/main/yolox_l.onnx";
        sha256 = "sha256-eGCued5siaPB63KumidWwMz74Et3kbtYgK+r2XhVpBE=";
      };
      yolo_nas_l_fp16 = fetchFromUrl {
        url = "https://huggingface.co/hr16/yolo-nas-fp16/resolve/main/yolo_nas_l_fp16.onnx";
        sha256 = "sha256-wrdYscqpXXh3NoU5cdvJx2CDCA1oQUjFzRhbH9QON78=";
      };
      dw-ll_ucoco_384 = fetchFromUrl {
        url = "https://huggingface.co/yzd-v/DWPose/resolve/main/dw-ll_ucoco_384.onnx";
        sha256 = "sha256-ck9P8kOe1hr7hvuKGVHsOcYiBoKAO0qL1PWYzZE7GEM=";
      };
      table5_pidinet = fetchFromUrl {
        url = "https://huggingface.co/lllyasviel/Annotators/resolve/main/table5_pidinet.pth";
        sha256 = "sha256-gIYKwmcli18nSG4O8VKiEdCwgSD2KusYWgUKzDDaSGw=";
      };
      sk_model = fetchFromUrl {
        url = "https://huggingface.co/lllyasviel/Annotators/resolve/main/sk_model.pth";
        sha256 = "sha256-xobO0qZmtIULS7bM8HSAMcPtqfgi3nOjS4l5lw2Q8MY=";
      };
      sk_model2 = fetchFromUrl {
        url = "https://huggingface.co/lllyasviel/Annotators/resolve/main/sk_model2.pth";
        sha256 = "sha256-MKU0eBBh806Du5QGtDNdpP8mFsldIqWFwSRaqDY+dOA=";
      };
      anyline-mteed = fetchFromUrl {
        url = "https://huggingface.co/TheMistoAI/MistoLine/resolve/main/Anyline/MTEED.pth";
        sha256 = "sha256-o8LYqM6UIlVceHFgvUY2LXYTJaVlMzwOP2pT4Lriq9s=";
      };
      depth_anything_vitb14 = fetchFromUrl {
        url = "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vitb14.pth";
        sha256 = "64ae214ae4e27424b644c49464c0aa243016f6f753d95097c8eb9ad0b9cb2d9b";
      };
      depth_anything_vitl14 = fetchFromUrl {
        url = "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vitl14.pth";
        sha256 = "6c6a383e33e51c5fdfbf31e7ebcda943973a9e6a1cbef1564afe58d7f2e8fe63";
      };
      depth_anything_vits14 = fetchFromUrl {
        url = "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vits14.pth";
        sha256 = "59afe57cfd9f4284deaf5b753d954723d7136ae842fba3e068ba03537ca1e60e";
      };
      depth_anything_v2_vitb = fetchFromUrl {
        url = "https://huggingface.co/depth-anything/Depth-Anything-V2-Base/resolve/main/depth_anything_v2_vitb.pth";
        sha256 = "0d2b7002e62d39d655571c371333340bd88f67ab95050c03591555aa05645328";
      };
    in
    ''
      runHook preInstall
      mkdir -p $out
      mkdir -p $out/ckpts/yzd-v/DWPose
      mkdir -p $out/ckpts/LiheYoung/Depth-Anything/checkpoints
      mkdir -p $out/ckpts/depth-anything/Depth-Anything-V2-Base
      mkdir -p $out/ckpts/lllyasviel/Annotators
      mkdir -p $out/ckpts/TheMistoAI/MistoLine/Anyline
      mkdir -p $out/ckpts/hr16/yolo-nas-fp16
      mkdir -p $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
      shopt -s dotglob
      shopt -s extglob
      cp -r ./!($out|$src) $out/${python3Packages.python.sitePackages}/custom_nodes/${pname}
      ln -s ${yolox_l} $out/ckpts/yzd-v/DWPose/${yolox_l.name}
      ln -s ${dw-ll_ucoco_384} $out/ckpts/yzd-v/DWPose/${dw-ll_ucoco_384.name}
      ln -s ${depth_anything_vitb14} $out/ckpts/LiheYoung/Depth-Anything/checkpoints/${depth_anything_vitb14.name}
      ln -s ${depth_anything_vitl14} $out/ckpts/LiheYoung/Depth-Anything/checkpoints/${depth_anything_vitl14.name}
      ln -s ${depth_anything_vits14} $out/ckpts/LiheYoung/Depth-Anything/checkpoints/${depth_anything_vits14.name}
      ln -s ${depth_anything_v2_vitb} $out/ckpts/depth-anything/Depth-Anything-V2-Base/${depth_anything_v2_vitb.name}
      ln -s ${table5_pidinet} $out/ckpts/lllyasviel/Annotators/${table5_pidinet.name}
      ln -s ${sk_model} $out/ckpts/lllyasviel/Annotators/${sk_model.name}
      ln -s ${sk_model2} $out/ckpts/lllyasviel/Annotators/${sk_model2.name}
      ln -s ${anyline-mteed} $out/ckpts/TheMistoAI/MistoLine/Anyline/${anyline-mteed.name}
      ln -s ${yolo_nas_l_fp16} $out/ckpts/hr16/yolo-nas-fp16/${yolo_nas_l_fp16.name}
      runHook postInstall
    '';
}
