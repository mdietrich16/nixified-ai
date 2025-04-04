{
  lib,
  fetchurl,
  buildPythonPackage,
  protobuf,
  numpy,
  opencv4,
  attrs,
  absl-py,
  matplotlib,
  flatbuffers,
  autoPatchelfHook,
}:

buildPythonPackage {
  pname = "mediapipe";
  version = "0.10.21";
  format = "wheel";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/9f/99/5da7ae7f7e25847383bc2fe5a9adc7ce150dd371682f486c0666b407cad7/mediapipe-0.10.21-cp312-cp312-manylinux_2_28_x86_64.whl";
    sha256 = "956eb1ebc275c629e61b085b2cab89c3a5b9e93bad1bb107348d98dafb5a4bb5";
  };

  propagatedBuildInputs = [
    absl-py
    attrs
    flatbuffers
    matplotlib
    numpy
    opencv4
    protobuf
  ];

  nativeBuildInputs = [ autoPatchelfHook ];

  pythonImportsCheck = [ "mediapipe" ];

  meta = with lib; {
    description = "Cross-platform, customizable ML solutions for live and streaming media";
    homepage = "https://github.com/google/mediapipe/releases/tag/v0.10.8";
    license = licenses.asl20;
    maintainers = with maintainers; [ ];
  };
}
