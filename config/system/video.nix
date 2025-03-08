{ ... }:
{
  # OpenGL
  hardware = {
    graphics.enable = true;
    enableRedistributableFirmware = true;
    cpu.intel.updateMicrocode = true;
  };
}
