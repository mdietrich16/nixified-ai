{ fetchResource, fetchair }:
{
  flux1-dev-q4_0 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q4_0.gguf";
    sha256 = "143fqhqjazxcgv1pnqrll1vfc2adk9ji0l7nrg5hrn20arbyjrr8";
    passthru = {
      comfyui.installPaths = [ "diffusion_models" ];
    };
  };

  flux-ae = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors";
    sha256 = "0f4ya8isiyyhbr6jrcbcx4ifvhg9ij8vdkds34wxn5fdfa1f5j5g";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  flux-text-encoder-1 = fetchResource {
    name = "text_encoder-1.safetensors";
    url = "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/text_encoder/model.safetensors";
    sha256 = "10nhkq7lgda6iai0vi09jvspqwiyzvbvlk5brm1fv4s67yi6fgc9";
    passthru = {
      comfyui.installPaths = [ "text_encoders" ];
    };
  };

  t5-v1_1-xxl-encoder = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/city96/t5-v1_1-xxl-encoder-gguf/resolve/main/t5-v1_1-xxl-encoder-Q4_K_M.gguf";
    sha256 = "1x0svg0mh6f9rqqk3ia6rsbsj0x10aw8rj20jf8z4z6ywavv1qkb";
    passthru = {
      comfyui.installPaths = [ "text_encoders" ];
    };
  };

  stable-diffusion-v1-5 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/stable-diffusion-v1-5/stable-diffusion-v1-5/resolve/main/v1-5-pruned.safetensors";
    sha256 = "sha256-GhifC+adYQakhUjnYmIH3d1wQqQY2/Nyzv0F4M26YbY=";
    passthru = {
      comfyui.installPaths = [ "checkpoints" ];
    };
  };

  sams = fetchResource rec {
    name = baseNameOf url;
    url = "https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth";
    sha256 = "0bi6dz13iwyr8sg6gfvk64yw7md2v4vzcgwip9x2dwgbyc13pgx7";
    passthru = {
      comfyui.installPaths = [ "sams" ];
    };
  };

  ltx-video = fetchResource {
    name = "ltx-video-2b-v0.9.1.safetensors";
    url = "https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-v0.9.1.safetensors";
    sha256 = "sha256-ojIAiWxe3fIVx8uVF4IMV2OisFTrYrqGy85rhxpFd+M=";
    passthru = {
      comfyui.installPaths = [ "checkpoints" ];
    };
  };

  t5xxl_fp16 = fetchResource {
    name = "t5xxl_fp16.safetensors";
    url = "https://huggingface.co/Comfy-Org/stable-diffusion-3.5-fp8/resolve/main/text_encoders/t5xxl_fp16.safetensors";
    sha256 = "sha256-bkgLCfrgSactKoxfvMuNPpL+vrIzu+nf5yVpWKkWdjU=";
    passthru = {
      comfyui.installPaths = [ "clip" ];
    };
  };

  hyper-sd15-1step-lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/ByteDance/Hyper-SD/resolve/main/Hyper-SD15-1step-lora.safetensors";
    sha256 = "sha256-oE/ZpTXB5W0491kO5yoT/VygQJhTtP/wIeWpSCzxyjs=";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  christmas-couture-lora = fetchair {
    name = "christmas-couture.safetensors";
    air = "urn:air:flux1:lora:civitai:1016234@1139381";
    sha256 = "07A336BFBE072C44EF2FBE0ECB69B7CD880FD3F096984ED87AD27919208FD207";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  ultrarealistic-lora = fetchResource {
    name = "ultrarealistic.safetensors";
    url = "https://civitai.com/api/download/models/1026423?type=Model&format=SafeTensor";
    sha256 = "B1C4DDF95671E6B51817B4F3802865E544040C232C467E76B1CB0C251BD6B634";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  # https://civitai.com/models/15003?modelVersionId=1460987
  cyberrealistic_v8 = fetchResource {
    name = "cyberrealistic_v8.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:15003@1460987";
    url = "https://civitai.com/api/download/models/1460987?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "4A74F783F5D57E93CE86EB2A791C4A2D79FC6D281B4FCA4F028255A067186A2A";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/15003?modelVersionId=1464918
  cyberrealistic_v8_inpainting = fetchResource {
    name = "cyberrealistic_v8_inpainting.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:15003@1464918";
    url = "https://civitai.com/api/download/models/1464918?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "0EE757321F40A95029C4FF7E4AE78352ED9EE67A3DDAA8D14B6B1A48161901F2";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/1125067/cyberillustrious-or-cyberrealistic
  cyberillustrious = fetchResource {
    name = "cyberillustrious.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:1125067@1471829";
    url = "https://civitai.com/api/download/models/1471829?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "E81790C3753EFD9CDFF441FAF9DFEAFAF3AB575DF271B3818F0FF7FA37B95C70";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Il" ];
    };
  };

  # https://civitai.com/models/443821/cyberrealistic-pony
  cyberrealistic_pony_v85 = fetchResource {
    name = "cyberrealistic_pony_v85.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:443821@1478064";
    url = "https://civitai.com/api/download/models/1478064?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "A8EE60513D2B24ACF6AC09F7E070B7F46237D1018B1B234EB137528DAD25D06C";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Pony" ];
    };
  };

  # https://civitai.com/models/153568/real-dream
  real_dream_sdxl5 = fetchResource {
    name = "real_dream_sdxl5.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:153568@1536022";
    url = "https://civitai.com/api/download/models/1536022?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "4A89409A4C08AD347F3AE700FB9AF1180ECE688894EF7B3195D7EB9EA86B20D2";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };

  # https://civitai.com/models/974693?modelVersionId=1542140
  realism_illustrious_by_stable_yogi_v35_fp16 = fetchResource {
    name = "realism_illustrious_by_stable_yogi_v35_fp16.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:974693@1542140";
    url = "https://civitai.com/api/download/models/1542140?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "80616A1C067007A8C9CC52F24BF092834888AF28CFD5CDC6627A447EFAA2420F";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Il" ];
    };
  };

  # https://civitai.com/models/4384?modelVersionId=128713
  dreamshaper_8 = fetchResource {
    name = "dreamshaper_8.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:4384@128713";
    url = "https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "879DB523C30D3B9017143D56705015E15A2CB5628762C11D086FED9538ABD7FD";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/4384?modelVersionId=252914
  dreamshaper_8_lcm = fetchResource {
    name = "dreamshaper_8_lcm.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:4384@252914";
    url = "https://civitai.com/api/download/models/252914?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "A4F3E1526C5DC4FCBE342F5C410D83AE202C7A415FCEFCBB92E0F93FCD0A87C3";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/4384?modelVersionId=131004
  dreamshaper_8_inpainting = fetchResource {
    name = "dreamshaper_8_inpainting.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:4384@131004";
    url = "https://civitai.com/api/download/models/131004?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "AC84E05D5039D7A8AEA3CED335AC7C56DA6D3C6816465651F928B137C3A7B24A";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/112902?modelVersionId=354657
  dreamshaperXL_lightning = fetchResource {
    name = "dreamshaperXL_lightning.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:112902@354657";
    url = "https://civitai.com/api/download/models/354657?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "FDBE56354B8F876B736F24D3AD867ECD4140C019F57642EC8DDD878088D44F64";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };

  # https://civitai.com/models/112902?modelVersionId=351306
  dreamshaperXL_21_turbo = fetchResource {
    name = "dreamshaperxl_21_turbo.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:112902@351306";
    url = "https://civitai.com/api/download/models/351306?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "4496B36D48BFD7CFE4E5DBCE3485DB567BCEFA2BEF7238D290DBD45612125083";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };

  # https://civitai.com/models/35960?modelVersionId=266360
  flat2DAnimerge_v45Sharp = fetchResource {
    name = "flat2DAnimerge_v45Sharp.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:35960@266360";
    url = "https://civitai.com/api/download/models/266360?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "sha256-/pUGO6YLySmNYOslL5jQVwOdmoghWK/gQvJmvcGx5Sg=";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/133005?modelVersionId=198530
  juggernautXL_version6Rundiffusion = fetchResource {
    name = "juggernautXL_version6Rundiffusion.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:133005@198530";
    url = "https://civitai.com/api/download/models/198530?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "sha256-H+bH7FTHhgQM2rx7TolyAGnZcJaSLiDQHxPndkQStH8=";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };
  # https://civitai.com/models/119229/zavychromaxl
  zavychromaxl_v10 = fetchResource {
    name = "zavychromaxl_v10.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:119229@916744";
    url = "https://civitai.com/api/download/models/916744?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "FF5B69C9A197EE7E577D72E0E73C826C8DD8B83D88289F93BB78B53A258ACC7C";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };

  # https://civitai.com/models/4201?modelVersionId=130072
  realisticVisionV51_v51VAE = fetchResource {
    name = "realisticVisionV51_v51VAE.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:4201@130072";
    url = "https://civitai.com/api/download/models/130072?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "392DEF60E49AE3E5C3A5EE64407DBAF7609C8A4E88ECB771340077BB14538097";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/372465?modelVersionId=914390
  ponyRealism_v22MainVAE = fetchResource {
    name = "ponyRealism_v22MainVAE.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:372465@914390";
    url = "https://civitai.com/api/download/models/914390?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "7C97ECF786A50A54835A22277C35703787B840E98C04C318A4E3FEF9D3B463F7";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Pony" ];
    };
  };

  # https://civitai.com/models/443821?modelVersionId=1478064
  cyberrealisticPony_v65 = fetchResource {
    name = "cyberrealisticPony_v65.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:443821@953264";
    url = "https://civitai.com/api/download/models/1478064?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "F42E486D3F4D1593A0A99998A60F71C5B328115750C7505194E767D58E1E004C";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Pony" ];
    };
  };

  # https://civitai.com/models/133005?modelVersionId=782002
  juggernautXL_vXI = fetchResource {
    name = "juggernautXL_vXI.safetensors";
    # air = "urn:air:sdxl:checkpoint:civitai:133005@782002";
    url = "https://civitai.com/api/download/models/782002?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "33E58E86686F6B386C526682B5DA9228EAD4F91D994ABD4B053442DC5B42719E";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SDXL" ];
    };
  };

  # https://civitai.com/models/84728?modelVersionId=90072
  photon_v1 = fetchResource {
    name = "photon_v1.safetensors";
    # air = "urn:air:sd1:checkpoint:civitai:84728@90072";
    url = "https://civitai.com/api/download/models/90072?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "sha256-7EG9KoJxrN5K6BysAE2fMwDn+whw6ujL/gu8Tvjif5E=";
    passthru = {
      comfyui.installPaths = [ "checkpoints/SD1.5" ];
    };
  };

  # https://civitai.com/models/257749?modelVersionId=290640
  pony-xl-v6 = fetchResource {
    name = "pony-xl-v6.safetensors";
    # air = "urn:air:pony:checkpoint:civitai:257749@290640";
    url = "https://civitai.com/api/download/models/290640?type=Model&format=SafeTensor&size=pruned&fp=fp16";
    sha256 = "67AB2FD8EC439A89B3FEDB15CC65F54336AF163C7EB5E4F2ACC98F090A29B0B3";
    passthru = {
      comfyui.installPaths = [ "checkpoints/Pony" ];
    };
  };

  vae-ft-mse-840000-ema-pruned = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors";
    sha256 = "735e4c3a447a3255760d7f86845f09f937809baa529c17370d83e4c3758f3c75";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  sdxl_vae = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors";
    sha256 = "63aeecb90ff7bc1c115395962d3e803571385b61938377bc7089b36e81e92e2e";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  flux_ae = fetchResource {
    name = "flux_ae.safetensors";
    url = "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors";
    sha256 = "afc8e28272cd15db3919bacdb6918ce9c1ed22e96cb12c4d5ed0fba823529e38";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  pony-xl-v6-vae = fetchResource {
    name = "pony-xl-v6-vae.safetensors";
    # air = "urn:air:pony:vae:civitai:257749@290640"; # sha256 = "235745AF8D86BF4A4C1B5B4F529868B37019A10F7C0B2E79AD0ABCA3A22BC6E1";
    url = "https://civitai.com/api/download/models/290640?type=VAE&format=SafeTensor";
    sha256 = "sha256-I1dFr42Gv0pMG1tPUphos3AZoQ98Cy55rQq8o6IrxuE=";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  flux1-vae = fetchResource {
    name = "flux1-va.safetensors";
    url = "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/vae/diffusion_pytorch_model.safetensors";
    sha256 = "f5b59a26851551b67ae1fe58d32e76486e1e812def4696a4bea97f16604d40a3";
    passthru = {
      comfyui.installPaths = [ "vae" ];
    };
  };

  NMKD_4x-Superscale-SP_178000_G = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/gemasai/4x_NMKD-Superscale-SP_178000_G/resolve/main/4x_NMKD-Superscale-SP_178000_G.pth";
    sha256 = "sha256-HRsAeP5xRG4EadjU31npa6qA2DzaYA1oI31lWDCCG8w=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  NMKD_4x-Superscale-Artisofject_210000_G = fetchResource rec {
    name = baseNameOf url;
    url = "https://nmkd.de/shared/ESRGAN/Models/Realistic%2C%20Multipurpose/4x_NMKD-Superscale-Artisoftject_210000_G.pth";
    sha256 = "sha256-+dnrdpgodXPDxMCBFtHudcXGjt97kFzo6NPhvqCyQ9I=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  OmniSR_X2_DIV2K = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/Omni-SR/resolve/main/OmniSR_X2_DIV2K.safetensors";
    sha256 = "sha256-eUCPwjIDvxYfqpV8SmAsxAUh7SI1py2Xa9nTdeZkRhE=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  OmniSR_X3_DIV2K = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/Omni-SR/resolve/main/OmniSR_X3_DIV2K.safetensors";
    sha256 = "sha256-T7C2j8MU95jS3c8fPSJTBFuj2VnYua4nDFqZufhi7hI=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  OmniSR_X4_DIV2K = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/Omni-SR/resolve/main/OmniSR_X4_DIV2K.safetensors";
    sha256 = "sha256-3/JeTtOSy1y+U02SDikgY6BVXfkoHFTF7DIUkKKlmDI=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  HAT_SRx4_ImageNet-pretrain = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/hat/resolve/main/HAT_SRx4_ImageNet-pretrain.pth";
    sha256 = "sha256-TuBTxCRhGHhG3A6Tqlq9NFkcByWo4ESlkADpLuIV6DM=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  Real_HAT_GAN_sharper = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/hat/resolve/main/Real_HAT_GAN_sharper.pth";
    sha256 = "sha256-WAC2cTYAbrjKs7TtfI1ztqGVuxjmzHCbZ0+aoGnAAnE=";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  foolhardy_Remacri_4x = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth";
    sha256 = "e1a73bd89c2da1ae494774746398689048b5a892bd9653e146713f9df8bca86a";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  NMKD_4x-Siax_200k = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/gemasai/4x_NMKD-Siax_200k/resolve/main/4x_NMKD-Siax_200k.pth";
    sha256 = "560424d9f68625713fc47e9e7289a98aabe1d744e1cd6a9ae5a35e9957fd127e";
    passthru = {
      comfyui.installPaths = [ "upscale_models" ];
    };
  };

  clip-vision_vit-h = fetchResource {
    name = "CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors";
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors";
    sha256 = "sha256-bKlmfaHKngsPdeRrsDD34BH0T4bL+41aNlkPzXUHsDA=";
    passthru = {
      comfyui.installPaths = [ "clip_vision" ];
    };
  };

  clip-vision_vit-bigG = fetchResource {
    name = "CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors";
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors";
    sha256 = "657723e09f46a7c3957df651601029f66b1748afb12b419816330f16ed45d64d";
    passthru = {
      comfyui.installPaths = [ "clip_vision" ];
    };
  };

  clip_vit_large_patch14 = fetchResource {
    name = "clip_vit_large_patch14.safetensors";
    url = "https://huggingface.co/openai/clip-vit-large-patch14/resolve/main/model.safetensors";
    sha256 = "a2bf730a0c7debf160f7a6b50b3aaf3703e7e88ac73de7a314903141db026dcb";
    passthru = {
      comfyui.installPaths = [ "clip_vision" ];
    };
  };

  MAT_Places512_G_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Acly/MAT/resolve/main/MAT_Places512_G_fp16.safetensors";
    sha256 = "sha256-MJ3Wzm4EA03EtrFce9KkhE0VjgPrKhOeDsprNm5AwN4=";
    passthru = {
      comfyui.installPaths = [ "inpaint" ];
    };
  };

  fooocus_inpaint_head = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/fooocus_inpaint_head.pth";
    sha256 = "sha256-Mvf4OODG2PE0N7qEEed6RojXei4034hX5O9NUfa5dpI=";
    passthru = {
      comfyui.installPaths = [ "inpaint" ];
    };
  };

  inpaint_v26_fooocus = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/inpaint_v26.fooocus.patch";
    sha256 = "sha256-+GV6AlEE4i1w+cBgY12OjCGW9DOHGi9o3ECr0hcfDVk=";
    passthru = {
      comfyui.installPaths = [ "inpaint" ];
    };
  };

  control_lora_rank128_v11f1e_sd15_tile_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11f1e_sd15_tile_fp16.safetensors";
    sha256 = "sha256-zsADaemc/tHOyX4RJM8yIN96meRTVOqh4zUMSF5lFU8=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_v11p_sd15_inpaint_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors";
    sha256 = "sha256-Z3pP41Ht7NQM0NfMIQqGhrWdTlUgcxfxIxnvdGp6Wok=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_lora_rank128_v11p_sd15_scribble_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11p_sd15_scribble_fp16.safetensors";
    sha256 = "sha256-8fAojNbUkNmXap9MNigvPUfLjgLcaAWqRLONRAT+AIo=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_v11p_sd15_lineart_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors";
    sha256 = "sha256-EFWRBtG7gZYpi3qBVl7eknkpXSst8VFludvhiZlN71Y=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_v11p_sd15_softedge_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors";
    sha256 = "sha256-54/qW0WZ/sLs1+PxSxcf6ykLiCAMldVp7A/1mhm8NHg=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_v11p_sd15_canny_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors";
    sha256 = "sha256-iTK2bhWq6DWzSQ2/mJ9WwlMQTO4IqIvyEoN2L1V8nxA=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_lora_rank128_v11f1p_sd15_depth_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11f1p_sd15_depth_fp16.safetensors";
    sha256 = "sha256-egSAgFlH83eYWowmhLjlLN0mX8sltmBOqUCazgjbPTQ=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_v1p_sd15_qrcode_monster = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/monster-labs/control_v1p_sd15_qrcode_monster/resolve/main/control_v1p_sd15_qrcode_monster.safetensors";
    sha256 = "sha256-x/Q/cOJmFT0S9eG7HJ574/RRPPDu8EMmYbEzG/4Ryt8=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  xinsir-controlnet-union-sdxl-1_0-promax = fetchResource {
    name = "xinsir-controlnet-union-sdxl-1.0-promax.safetensors";
    url = "https://huggingface.co/xinsir/controlnet-union-sdxl-1.0/resolve/main/diffusion_pytorch_model_promax.safetensors";
    sha256 = "sha256-n64uUMtDG/y+BYIrWewiKN9UXvJ/cR3qiUnp9O2ffNw=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_lora_rank128_v11p_sd15_normalbae_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11p_sd15_normalbae_fp16.safetensors";
    sha256 = "sha256-yoQBCo6DLT0uZxx2ZP80X2RfPvfoNZy8o+KzbYa8/zA=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_lora_rank128_v11p_sd15_openpose_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11p_sd15_openpose_fp16.safetensors";
    sha256 = "sha256-bI7d4knmuW9smwUWokPXXritw4Yk7+FxqcirX7Gmlgg=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_lora_rank128_v11p_sd15_seg_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_lora_rank128_v11p_sd15_seg_fp16.safetensors";
    sha256 = "sha256-EZN5QVl6ZxUO8PdKow8IKxY0QxCA3uYJ0CMamlm3+k8=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  control_sd15_inpaint_depth_hand_fp16 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/hr16/ControlNet-HandRefiner-pruned/resolve/main/control_sd15_inpaint_depth_hand_fp16.safetensors";
    sha256 = "sha256-lEt0uO03ARF//lVQAmu/8shhbxySsbsv7gDlNJ/0YlY=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  mistoline_flux_dev_v1 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/TheMistoAI/MistoLine_Flux.dev/resolve/main/mistoline_flux.dev_v1.safetensors";
    sha256 = "sha256-QAkoVU+hTbpBrDy9kGuihYrCSSjxVGCCztHgxNDYIEY=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  flux-canny-controlnet-v3 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors";
    sha256 = "sha256-ZUbykEl5YQGmNw2wpD0mcdApQofDaytOh5LPnmjw6vA=";
    passthru = {
      comfyui.installPaths = [
        "xlabs/controlnets"
        "controlnet"
      ];
    };
  };

  flux-depth-controlnet-v3 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors";
    sha256 = "sha256-1S7q+Act6J1yse55473Hm115XtCmiBoCm74T2DPffl8=";
    passthru = {
      comfyui.installPaths = [ "controlnet" ];
    };
  };

  flux-hed-controlnet-v3 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors";
    sha256 = "31c110ae4557c19f1c2d74f824c20ea4c340161106df25cf7caf298e2f22f441";
    passthru = {
      comfyui.installPaths = [
        "xlabs/controlnets"
        "controlnet"
      ];
    };
  };

  instantx_flux_canny = fetchResource {
    name = "instantx_flux_canny.safetensors";
    url = "https://huggingface.co/InstantX/FLUX.1-dev-Controlnet-Canny/resolve/main/diffusion_pytorch_model.safetensors";
    sha256 = "55b8b2c5f8aeca6d833e70af24585b44e26a6cd25d3076471272b61dbbef6e83";
    passthru = {
      comfyui.installPaths = [
        "xlabs/controlnets"
        "controlnet"
      ];
    };
  };

  instantx_flux_depth = fetchResource {
    name = "instantx_flux_depth.safetensors";
    url = "https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Depth/resolve/main/diffusion_pytorch_model.safetensors";
    sha256 = "a4ba307773cb1f51c815f5b8ddf76b199465f3e89a05676f9a0bcab9d5a23d2b";
    passthru = {
      comfyui.installPaths = [
        "xlabs/controlnets"
        "controlnet"
      ];
    };
  };

  instantx_flux_union = fetchResource {
    name = "instantx_flux_union.safetensors";
    url = "https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro/resolve/main/diffusion_pytorch_model.safetensors";
    sha256 = "981a01d6a9575e90820275eda61b33d4ecab0928c68a4f31b132b9687930f90a";
    passthru = {
      comfyui.installPaths = [
        "xlabs/controlnets"
        "controlnet"
      ];
    };
  };

  ip-adapter_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors";
    sha256 = "289b45f16d043d0bf542e45831f971dcdaabe18b656f11e86d9dfba7e9ee3369";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-full-face_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors";
    sha256 = "f4a17fb643bf876235a45a0e87a49da2855be6584b28ca04c62a97ab5ff1c6f3";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-plus-face_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors";
    sha256 = "1c9edc21af6f737dc1d6e0e734190e976cfacf802d6b024b77aa3be922f7569b";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-plus_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors";
    sha256 = "a1c250be40455cc61a43da1201ec3f1edaea71214865fb47f57927e06cbe4996";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter_sd15_light_v11 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin";
    sha256 = "350b63a57847c163e2e984b01090f85ffe60eaae20f32b2b2c9e1ccc7ddd972b";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter_sd15_vit-G = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors";
    sha256 = "a26f736af07bb341a83dfea23713531d0575760e8ed947c68cb31a4c62d9c90b";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter_sdxl_vit-h = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors";
    sha256 = "sha256-6/BdkYNIrsersCpens73fgquppFKXE6hP1DUXrFoGDE=";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter_sdxl = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors";
    sha256 = "ba1002529e783604c5f326d49f0122025392d1d20ac8d573b3eeb3e6dea4ebb6";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-plus_sdxl_vit-h = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors";
    sha256 = "3f5062b8400c94b7159665b21ba5c62acdcd7682262743d7f2aefedef00e6581";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-plus-face_sdxl_vit-h = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors";
    sha256 = "677ad8860204f7d0bfba12d29e6c31ded9beefdf3e4bbd102518357d31a292c1";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  flux-ip-adapter-v2 = fetchResource {
    name = "flux-ip-adapter-v2.safetensors";
    url = "https://huggingface.co/XLabs-AI/flux-ip-adapter-v2/resolve/main/ip_adapter.safetensors";
    sha256 = "8f2bfddaffc4fe2a6667bef24c8ce6075e81d01d0f6b0f9adbe46ad686057ee2";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid-plusv2_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15.bin";
    sha256 = "sha256-JtDYah1g1syBHTuIYheLRh4e62Ueb+K3K6F6qVQR4xM=";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid-plusv2_sdxl = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin";
    sha256 = "sha256-xpRdgrVDcAzDzLuY02O4N+nFligWB4V8dLcTqHba9fs=";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid_sdxl = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin";
    sha256 = "f455fed24e207c878ec1e0466b34a969d37bab857c5faa4e8d259a0b4ff63d7e";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15.bin";
    sha256 = "201344e22e6f55849cf07ca7a6e53d8c3b001327c66cb9710d69fd5da48a8da7";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid-portrait-v11_sd15 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait-v11_sd15.bin";
    sha256 = "a48cb4f89ed18e02c6000f65aa9efec452e87eaed4a1bc9fcf4a460c8d0e3bc6";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid-portrait_sdxl = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin";
    sha256 = "5631ce7824cdafd2db37c5e85b985730a95ff59c5b4fc80c2b79b0bee5711512";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  ip-adapter-faceid-portrait_sdxl_unnorm = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl_unnorm.bin";
    sha256 = "220bb86e205393a3d0411631cb473caddbf35fd371be2905ca9008818170db55";
    passthru = {
      comfyui.installPaths = [ "ipadapter" ];
    };
  };

  flux_clip_l = fetchResource {
    name = "flux_clip_l.safetensors";
    # air = "urn:air:flux1:lora:huggingface:comfyanonymous/flux_text_encoders@clip_l.safetensors";
    url = "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors";
    sha256 = "sha256-ZgxvWxq66dxJisLSHhNH0qvbDPbAwMhXbNeWSR2abN0=";
    passthru = {
      comfyui.installPaths = [ "clip" ];
    };
  };

  t5-v1_1-xxl-encoder-Q5_K_M = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/city96/t5-v1_1-xxl-encoder-gguf/resolve/main/t5-v1_1-xxl-encoder-Q5_K_M.gguf";
    sha256 = "b51cbb10b1a7aac6dd1c3b62f0ed908bfd06e0b42d2f3577d43e061361f51dae";
    passthru = {
      comfyui.installPaths = [ "clip" ];
    };
  };

  flux1-schnell-Q4_0 = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/city96/FLUX.1-schnell-gguf/resolve/main/flux1-schnell-Q4_0.gguf";
    sha256 = "sha256-kKOT06RL7GkccHAD9DT93gYGS4cLs8IG63pPEJsl/04=";
    passthru = {
      comfyui.installPaths = [ "diffusion_models" ];
    };
  };

  flux1-dev-bnb-nf4-v2 = fetchResource {
    name = "flux1-dev-bnb-nf4-v2.safetensors";
    url = "https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors";
    sha256 = "fef37763b8f2c8cc3463139bbb6d91aa517c605b654d4e5c540de52813f30306";
    passthru = {
      comfyui.installPaths = [ "diffusion_models" ];
    };
  };

  flux1-dev-Q4_0 = fetchResource {
    name = "flux1-dev-Q4_0.gguf";
    url = "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q4_0.gguf";
    sha256 = "2867e9575640d80ccbcbf65010659a4d09e676a034637bc37eac7f2531c46e90";
    passthru = {
      comfyui.installPaths = [ "diffusion_models" ];
    };
  };

  # https://civitai.com/models/7808?modelVersionId=9208
  easynegative = fetchResource {
    name = "easynegative.safetensors";
    # air = "urn:air:sd1:embedding:civitai:7808@9208";
    url = "https://civitai.com/api/download/models/9208?type=Model&format=SafeTensor&size=full&fp=fp16";
    sha256 = "C74B4E810B030F6B75FDE959E2DB678C268D07115B85356D3C0138BA5EB42340";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  # https://civitai.com/models/332646?modelVersionId=720175
  high-quality_v3_pony = fetchResource {
    name = "high-quality_v3_pony.safetensors";
    # air = "urn:air:sdxl:embedding:civitai:332646@720175";
    url = "https://civitai.com/api/download/models/720175?type=Model&format=SafeTensor";
    sha256 = "1727C6CDDF61DAA7487340212C9BA8B4522579CF011E2EF5F269AD1D8B072C2D";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };


  #
  stable_yogis_pdxl_pos = fetchResource {
    name = "stable_yogis_pdxl_positives.safetensors";
    # air = "urn:air:sdxl:embedding:civitai:1331980@1503873";
    url = "https://civitai.com/api/download/models/1503873?type=Model&format=SafeTensor";
    sha256 = "926B806F83D8D12E535E29B69434DB3F1F89B40F4ADBF72CC5EF8FDE1C6AA8BE";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  # https://civitai.com/models/1331758/stableyogispdxlnegatives?modelVersionId=1503612
  stable_yogis_pdxl_neg = fetchResource {
    name = "stable_yogis_pdxl_negatives.safetensors";
    # air = "urn:air:sdxl:embedding:civitai:1331758@1503612";
    url = "https://civitai.com/api/download/models/1503612?type=Negative&format=Other";
    sha256 = "7CFBC7EE07B6C64CCBE7BD331F031141EC45C0A7E9ABE35698D9788FA43A540E";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  # https://civitai.com/models/332646?modelVersionId=482268
  photoreal_pos_pony = fetchResource {
    name = "photoreal_pos_pony.safetensors";
    # air = "urn:air:sdxl:embedding:civitai:332646@482268";
    url = "https://civitai.com/api/download/models/482268?type=Model&format=PickleTensor";
    sha256 = "ADF282AFB238107532E5502495771F0E19B18CB5F7A23846EE96206ABEFE571B";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  photoreal_neg_pony = fetchResource {
    name = "photoreal_neg_pony.safetensors";
    url = "https://civitai.com/api/download/models/482268?type=Negative&format=Other";
    sha256 = "CC5B7CA272EAFEDAB7A31BE3FC105F5142CED601BF780BA1F0FC532DBF00453B";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  cyberrealistic_negative = fetchResource {
    name = "cyberrealistic_negative.safetensors";
    url = "https://civitai.com/api/download/models/82745?type=Negative&format=Other";
    # air = "urn:air:sd1:embedding:civitai:77976@82745";
    sha256 = "65F3EA567C04C22F92024C5B55CBECA580BC330C4290AEB647EBD86273B3FFB8";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  cyberrealisticSDXL_negative = fetchResource {
    name = "cyberrealisticSDXL_negative.safetensors";
    url = "https://civitai.com/api/download/models/969489?type=Negative&format=Other";
    # air = "urn:air:sdxl:embedding:civitai:77976@969489";
    sha256 = "46D71B282F035D9F0891A10512C471CFB02E3D4336D94ACD8264B4821B9B32C3";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  cyberrealisticPony_negative = fetchResource {
    name = "cyberrealisticPony_negative.safetensors";
    url = "https://civitai.com/api/download/models/972770?type=Negative&format=Other"; # air = "urn:air:sdxl:embedding:civitai:77976@972770";
    sha256 = "5C6E0BA4DDEC726268C347F0D18B0831DA635F182C1748E0AB5FB7D8AB6F4E1D";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  cyberrealisticPony_positive = fetchResource {
    name = "cyberrealisticPony_positive.safetensors";
    # air = "urn:air:sdxl:embedding:civitai:1309512@1477814";
    url = "https://civitai.com/api/download/models/1477814?type=Model&format=SafeTensor";
    sha256 = "18F989C6661AA51DA864244E13BF1629BE583CE42CC332AFB681B0C69112DBF6";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  EasyNegative = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/embed/EasyNegative/resolve/main/EasyNegative.safetensors";
    sha256 = "sha256-x0tOgQsDD2t1/elZ4ttnjCaNBxFbhTVtPAE4ul60I0A=";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  illustrious_negatives = fetchResource {
    name = "Stable_Yogis_Illustrious_Negatives.safetensors";
    url = "https://civitai.com/api/download/models/1153212?type=Negative&format=Other";
    sha256 = "3EE9D7895E3F57D0D3D4F5FB68DADF825D9F1B18D28B7FD57A3FF25511171636";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  illustrious_positives = fetchResource {
    name = "Stable_Yogis_Illustrious_Positives.safetensors";
    url = "https://civitai.com/api/download/models/1153237?type=Model&format=SafeTensor";
    sha256 = "77AC153A007E8ED13BD75FD41355018B9F51F26C6D18DA9620E4CB9BDF798ABB";
    passthru = {
      comfyui.installPaths = [ "embeddings" ];
    };
  };

  # https://civitai.com/models/171159/sdxlrender
  sdxlrender = fetchResource {
    name = "sdxlrender.safetensors";
    # air = "urn:air:sd1:lora:civitai:171159@236130";
    url = "https://civitai.com/api/download/models/236130?type=Model&format=SafeTensor";
    sha256 = "672FCCCF2CE6CA4EF71762A3EC1B8C8AFD79328067E13C8F9756260EC94D1608";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  Hyper-SD15-8steps-CFG-lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/ByteDance/Hyper-SD/resolve/main/Hyper-SD15-8steps-CFG-lora.safetensors";
    sha256 = "sha256-9hI9W5UNUlCrbDNgDif03PcbMJnr+IhoXgHp6BF85II=";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  Hyper-SDXL-8steps-CFG-lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/ByteDance/Hyper-SD/resolve/main/Hyper-SDXL-8steps-CFG-lora.safetensors";
    sha256 = "sha256-VbUTNMhQYa//Xv98VQthljyLhgelhou+TybbSTdHGbE=";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  ip-adapter-faceid_sdxl_lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors";
    sha256 = "4fcf93d6e8dc8dd18f5f9e51c8306f369486ed0aa0780ade9961308aff7f0d64";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  ip-adapter-faceid_sd15_lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15_lora.safetensors";
    sha256 = "70699f0dbfadd47de1f81d263cf4c86bd4b7271d841304af9b340b3a7f38e86a";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  ip-adapter-faceid-plusv2_sdxl_lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors";
    sha256 = "sha256-8ktLstrWY4oJwA8VHN6EmRuvN0QJOFvLq1PBhxowy3s=";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  ip-adapter-faceid-plusv2_sd15_lora = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15_lora.safetensors";
    sha256 = "sha256-ir/4ehWgSfPgGGwugsHI53eDuvLPtj80xBJlYFLrV7A=";
    passthru = {
      comfyui.installPaths = [ "loras" ];
    };
  };

  # https://civitai.com/models/340248?modelVersionId=1279193
  sinfully_stylish_sdxl = fetchResource {
    name = "sinfully_stylish_sdxl.safetensors";
    # air = "urn:air:sdxl:lora:civitai:340248@1279193";
    url = "https://civitai.com/api/download/models/1279193?type=Model&format=SafeTensor";
    sha256 = "4EFD1E8F7AC6220155E9781026EB003C81F1237586038908953E9E951EFE7044";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/340248?modelVersionId=1278791
  sinfully_stylish_flux = fetchResource {
    name = "sinfully_stylish_flux.safetensors";
    # air = "urn:air:flux1:lora:civitai:340248@1278791";
    url = "https://civitai.com/api/download/models/1278791?type=Model&format=SafeTensor";
    sha256 = "0442EA653F02C063F4F671218CD48144329F23C773CEDE5E190C61A5216A197E";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/340248?modelVersionId=1279063
  sinfully_stylish_pony = fetchResource {
    name = "sinfully_stylish_pony.safetensors";
    # air = "urn:air:sdxl:lora:civitai:340248@1279063";
    url = "https://civitai.com/api/download/models/1279063?type=Model&format=SafeTensor";
    sha256 = "3D8E96CA29F9DC2CD7F8E8AFB974E920A355884871C6275168690587A3A90175";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/340248?modelVersionId=1347619
  sinfully_stylish_illustrious = fetchResource {
    name = "sinfully_stylish_illustrious.safetensors";
    # air = "urn:air:sdxl:lora:civitai:340248@1347619";
    url = "https://civitai.com/api/download/models/1347619?type=Model&format=SafeTensor";
    sha256 = "12786C96D5829E082684A8DD6E20DD4389B176F6FAC9648ACCAD596C36B20CF6";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/888231?modelVersionId=1029540
  gothic_neon_pony = fetchResource {
    name = "gothic_neon_pony.safetensors";
    # air = "urn:air:sdxl:lora:civitai:888231@1029540";
    url = "https://civitai.com/api/download/models/1029540?type=Model&format=SafeTensor";
    sha256 = "13F2A1C566D6FBE44251D1B3444D8069113F3F6005DAC70F42C3E2000D2E55D7";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/1003333?modelVersionId=1124566
  gothic_neon_illustrious = fetchResource {
    name = "gothic_neon_illutrious.safetensors";
    # air = "urn:air:sdxl:lora:civitai:1003333@1124566";
    url = "https://civitai.com/api/download/models/1124566?type=Model&format=SafeTensor";
    sha256 = "9E6F5D6E5B240174B7F836120235ABC23B036B4E3BE4D025E85D131A8B5ECF90";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/1410317/amateur-style-slider?modelVersionId=1594293
  amateur_style_v1_pony = fetchResource {
    name = "amateur_style_v1_pony.safetensors";
    # air = "urn:air:sdxl:lora:civitai:1410317@1594293";
    url = "https://civitai.com/api/download/models/1594293?type=Model&format=SafeTensor";
    sha256 = "033E6462E997FA21BF3C000BD48AEB2B93FC192A714F51774A33782513E90344";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/888250?modelVersionId=399443
  detailed-painting-pony = fetchResource {
    name = "detailed-painting-pony.safetensors";
    # air = "urn:air:sdxl:lora:civitai:888250@399443";
    url = "https://civitai.com/api/download/models/399443?type=Model&format=SafeTensor";
    sha256 = "552EC37A98FB114D0E6E2CF2D83AA2950222B0B4E44B658287675D0A51C7B80C";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  realism_lora_flux = fetchResource {
    name = "realism_lora.safetensors";
    url = "https://huggingface.co/XLabs-AI/flux-RealismLora/resolve/main/lora.safetensors";
    sha256 = "0a83a924b822b70b5e458d27935ebfa7713edaee04ff9f194209525354031eca";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  art_lora_flux = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/art_lora.safetensors";
    sha256 = "8c8b3a1a3b98547dc94247ce7645c5ce92d59dced7bb1702405b3b2b545e822c";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  scenery_lora_flux = fetchResource {
    name = "scenery_lora.safetensors";
    url = "https://huggingface.co/XLabs-AI/flux-lora-collection/resolve/main/scenery_lora_comfy_converted.safetensors";
    sha256 = "ef2cbd27702293e96f65acfbaa28fcd10ee14a1c3efcad46abfc1b579227133a";
    passthru = {
      comfyui.installPaths = [ "loras/Style" ];
    };
  };

  # https://civitai.com/models/178167?modelVersionId=1065885
  detailer_by_stable_yogi_pony_xl = fetchResource {
    name = "detailer_by_stable_yogi_pony_xl.safetensors";
    url = "https://civitai.com/api/download/models/1065885?type=Model&format=SafeTensor";
    sha256 = "8C301442E143BFEDE3A97A80C2571E9CE31ACDFFC32F5452C88002CB92159209";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  # https://civitai.com/models/178167?modelVersionId=1071060
  eye-detailer_by_stable_yogi_pony_xl = fetchResource {
    name = "eye-detailer_by_stable_yogi_pony_xl.safetensors";
    url = "https://civitai.com/api/download/models/1071060?type=Model&format=SafeTensor";
    sha256 = "A1342CB2BD91DDF8921E07702EC2D64288134BA0C4E5CE8985E659C5FE15753D";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  # https://civitai.com/models/1267943/hair-length-slider-pony-xl?modelVersionId=1430143
  hair_slider_pony = fetchResource {
    name = "hair_slider_pony.safetensors";
    url = "https://civitai.com/api/download/models/1430143?type=Model&format=SafeTensor";
    sha256 = "8E251E31A85C4D97C706BC15DDC639C914E3193C003122ECE062A93941F5A444";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  # https://civitai.com/models/122359?modelVersionId=135867
  detail_tweaker_xl = fetchResource {
    name = "detail_tweaker_xl.safetensors";
    # air = "urn:air:sdxl:lora:civitai:122359@135867";
    url = "https://civitai.com/api/download/models/135867?type=Model&format=SafeTensor";
    sha256 = "0D9BD1B873A7863E128B4672E3E245838858F71469A3CEC58123C16C06F83BD7";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  # https://civitai.com/models/58390/detail-tweaker-lora-lora
  detail_tweaker = fetchResource {
    name = "detail_tweaker.safetensors";
    # air = "urn:air:sd1:lora:civitai:58390@62833";
    url = "https://civitai.com/api/download/models/62833?type=Model&format=SafeTensor";
    sha256 = "47AAAF0D2945CA937151D61304946DD229B3F072140B85484BC93E38F2A6E2F7";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  # https://civitai.com/models/124347/xlmoreart-full-xlreal-enhancer
  more_art-full-xl = fetchResource {
    name = "more_art_full_xl.safetensors";
    # air = "urn:air:sdxl:lora:civitai:124347@152309";
    url = "https://civitai.com/api/download/models/152309?type=Model&format=SafeTensor";
    sha256 = "15E31FE2B6AE2E77EE47A3CCDF27BD14F7B54CE27C6A58502875FDAD26F34460";
    passthru = {
      comfyui.installPaths = [ "loras/Aesthetics" ];
    };
  };

  Llama-32-11B-Vision-Instruct-nf4 = fetchResource {
    name = "Llama-3.2-11B-Vision-Instruct-nf4.safetensors";
    url = "https://huggingface.co/SeanScripts/Llama-3.2-11B-Vision-Instruct-nf4/resolve/main/model.safetensors";
    sha256 = "a3db0c24d1e728b0951a33e99a96f9391c26b7e52b43d94d625fe02be20bb336";
    passthru = {
      comfyui.installPaths = [ "LLM" ];
    };
  };
  segment-anything = fetchResource rec {
    name = baseNameOf url;
    url = "https://dl.fbaipublicfiles.com/segment_anything/sam_vit_b_01ec64.pth";
    sha256 = "sha256-7C32JzJhTldBHNzzKiP/3yiRA4DQMTnuD0/L6R64yRI=";
    passthru = {
      comfyui.installPaths = [ "sams" ];
    };
  };
  face_yolo9c = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Bingsu/adetailer/resolve/main/face_yolov9c.pt";
    sha256 = "d02fe493c31e1bbc6450f4dc6f1db86a02a59322ff1f6d318da0661d72ddd084";
    passthru = {
      comfyui.installPaths = [
        {
          name = "ultralytics_bbox";
          path = "ultralytics/bbox";
        }
        {
          name = "ultralytics";
          path = "ultralytics";
          installPath = "ultralytics/bbox";
        }
      ];
    };
  };
  hand_yolov9c = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Bingsu/adetailer/resolve/main/hand_yolov9c.pt";
    sha256 = "6f116f686ef5942fa0c1d08db481b3d7622047a97847eccfb2a264f9ce9777f2";
    passthru = {
      comfyui.installPaths = [
        {
          name = "ultralytics_bbox";
          path = "ultralytics/bbox";
        }
        {
          name = "ultralytics";
          path = "ultralytics";
          installPath = "ultralytics/bbox";
        }
      ];
    };
  };
  person_yolov8m-seg = fetchResource rec {
    name = baseNameOf url;
    url = "https://huggingface.co/Bingsu/adetailer/resolve/main/person_yolov8m-seg.pt";
    sha256 = "c8ab26f517173b1fe8342d336a09f443eb61cb08dcbfc78d53fff4c2547ae81e";
    passthru = {
      comfyui.installPaths = [
        {
          name = "ultralytics_segm";
          path = "ultralytics/segm";
        }
        {
          name = "ultralytics";
          path = "ultralytics";
          installPath = "ultralytics/segm";
        }
      ];
    };
  };

  wd-vit-large-tagger-v3 = fetchResource {
    name = "wd-vit-large-tagger-v3.onnx";
    url = "https://huggingface.co/SmilingWolf/wd-vit-large-tagger-v3/resolve/main/model.onnx";
    sha256 = "e4c8001b000a6c98f2db10794f7c406daa79873d071d6ca924330fa053fa1845";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-vit-tagger-v3 = fetchResource {
    name = "wd-vit-tagger-v3.onnx";
    url = "https://huggingface.co/SmilingWolf/wd-vit-tagger-v3/resolve/main/model.onnx";
    sha256 = "35f23693620b668f4d53fd3c62bf65e40af739bc52c7eb0fbc49258b58d065b6";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-eva02-large-tagger-v3 = fetchResource {
    name = "wd-eva02-large-tagger-v3.onnx";
    url = "https://huggingface.co/SmilingWolf/wd-eva02-large-tagger-v3/resolve/main/model.onnx";
    sha256 = "9e768793060c7939b277ccb382783e8670e8a042d29d77aa736be0c8cc898bfc";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-v1-4-moat-tagger-v2 = fetchResource {
    name = "wd-v1-4-moat-tagger-v2.onnx";
    url = "https://huggingface.co/SmilingWolf/wd-v1-4-moat-tagger-v2/resolve/main/model.onnx";
    sha256 = "b8cef913be4c9e8d93f9f903e74271416502ce0b4b04df0ff1e2f00df488aa03";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };
  wd-vit-large-tagger-v3_tags = fetchResource {
    name = "wd-vit-large-tagger-v3.csv";
    url = "https://huggingface.co/SmilingWolf/wd-vit-large-tagger-v3/resolve/main/selected_tags.csv";
    sha256 = "sha256-KYYz2U0AMdIIHAiT8pyC6rfw3wCwhIO6jynR6XlEEhc=";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-vit-tagger-v3_tags = fetchResource {
    name = "wd-vit-tagger-v3.csv";
    url = "https://huggingface.co/SmilingWolf/wd-vit-tagger-v3/resolve/main/selected_tags.csv";
    sha256 = "sha256-KYYz2U0AMdIIHAiT8pyC6rfw3wCwhIO6jynR6XlEEhc=";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-eva02-large-tagger-v3_tags = fetchResource {
    name = "wd-eva02-large-tagger-v3.csv";
    url = "https://huggingface.co/SmilingWolf/wd-eva02-large-tagger-v3/resolve/main/selected_tags.csv";
    sha256 = "sha256-KYYz2U0AMdIIHAiT8pyC6rfw3wCwhIO6jynR6XlEEhc=";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };

  wd-v1-4-moat-tagger-v2_tags = fetchResource {
    name = "wd-v1-4-moat-tagger-v2.csv";
    url = "https://huggingface.co/SmilingWolf/wd-v1-4-moat-tagger-v2/resolve/main/selected_tags.csv";
    sha256 = "sha256-jIdQYA2zYjOhsnSsiL1GKJ5YizOCGMLkxiu8nytRY2g=";
    passthru = {
      comfyui.installPaths = [ "wd14_tagger" ];
    };
  };
}
