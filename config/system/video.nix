{ pkgs, ... }: {
  # OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
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
