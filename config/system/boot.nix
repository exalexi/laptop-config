{ pkgs, ... }: {
  
  boot = {
    loader = {
      systemd-boot.enable = true;
  	  efi.canTouchEfiVariables = true;
    };
    kernelParams = [ "quiet" ];
    initrd = {
      kernelModules = [ "amdgpu" ];
      systemd.enable = true;
    };
    plymouth.enable = true;
  };
}