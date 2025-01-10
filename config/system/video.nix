{ pkgs, ... }:
{
  # OpenGL
  hardware.graphics = {
    enable = true;
    #Deprecated
    #driSupport = true;
    extraPackages = with pkgs; [
      #intel-media-driver
      #intel-compute-runtime
    ];
  };
  hardware = {
    enableRedistributableFirmware = true;
    cpu = {
      intel.updateMicrocode = true;
      amd.updateMicrocode = true;
    };
  };
}
