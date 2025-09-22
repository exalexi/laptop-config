{ config, ... }:
{
  hardware.graphics.enable = true;
  hardware.nvidia = {
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
    prime = {
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  services.xserver.videoDrivers = [
    "modesetting" # example for Intel iGPU; use "amdgpu" here instead if your iGPU is AMD
    "nvidia"
  ];
}
