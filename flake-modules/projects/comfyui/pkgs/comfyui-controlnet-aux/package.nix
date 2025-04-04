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
  pname = "comfyui-controlnet-aux";
  version = "unstable-2024-08-28";
  pyproject = true;
  src = fetchFromGitHub {
    owner = "Fannovel16";
    repo = "comfyui_controlnet_aux";
    rev = "83463c2e4b04e729268e57f638b4212e0da4badc";
    sha256 = "";
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
      # https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vitb14.pth
      depth_anything =
        filename:
        fetchFromUrl {
          name = filename;
          # observed url when it tries to download on its own
          url = "https://cdn-lfs-us-1.huggingface.co/repos/b2/a8/b2a84b9a6ef705fba73e7ccec6a9728b3427d8b4c7f536eae186110f0cbd700f/64ae214ae4e27424b644c49464c0aa243016f6f753d95097c8eb9ad0b9cb2d9b?response-content-disposition=inline%3B+filename*%3DUTF-8%27%27${filename}%3B+filename%3D%22${filename}%22%3B&Expires=1719406653&Policy=eyJTdGF0ZW1lbnQiOlt7IkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTcxOTQwNjY1M319LCJSZXNvdXJjZSI6Imh0dHBzOi8vY2RuLWxmcy11cy0xLmh1Z2dpbmdmYWNlLmNvL3JlcG9zL2IyL2E4L2IyYTg0YjlhNmVmNzA1ZmJhNzNlN2NjZWM2YTk3MjhiMzQyN2Q4YjRjN2Y1MzZlYWUxODYxMTBmMGNiZDcwMGYvNjRhZTIxNGFlNGUyNzQyNGI2NDRjNDk0NjRjMGFhMjQzMDE2ZjZmNzUzZDk1MDk3YzhlYjlhZDBiOWNiMmQ5Yj9yZXNwb25zZS1jb250ZW50LWRpc3Bvc2l0aW9uPSoifV19&Signature=XDSvjG3AZZEL66gSsa4R5uE9bWFOA-wbiqkG7eX3t57nrZjdMmhVBjZxuXrB5TV-jjP0ZX52fDUlfIqbPjmsknxQql3aqFftJOhvbu7D467ng6HDw54yuVlIZ7ZQ7Z5kOuyAt3WSNyRQdgPVFQtb7~nvZmAbUheHdZWysg9ArCgYCRyKTPlR2hwyns9xTPlXkihkEcFK1vuVOENWXmOok~0-Ri6lgTiqBDA8OCoRasgSoxBHyApHi8CWfoJRj-MpmqBDC48lsM8xDU3perWtZ6LPfmrPmJz-KnOqZ~Ou~tFdfGOLyf66hBKN0~JH08L7Fr6c6A1Bty9mtZUQ4iuN9Q__&Key-Pair-Id=K2FPYV99P2N66Q";
          sha256 = "sha256-ZK4hSuTidCS2RMSUZMCqJDAW9vdT2VCXyOua0LnLLZs=";
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
      depth_anything_vitb14 = depth_anything "depth_anything_vitb14.pth";
      depth_anything_vitl14 = depth_anything "depth_anything_vitl14.pth";
      depth_anything_vits14 = depth_anything "depth_anything_vits14.pth";
      depth_anything_v2_vitb = fetchFromUrl {
        url = "https://huggingface.co/depth/Depth-Anything-V2-Base/resolve/main/depth_anything_v2_vitb.pth";
        sha256 = "sha256-DStwAuYtOdZVVxw3EzM0C9iPZ6uVBQwDWRVVqgVkUyg=";
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
