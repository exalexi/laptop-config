{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (retroarch.override {
      cores = with libretro; [
        #3DS
        citra
        # NES
        bsnes
        #GBA
        mgba
        #GBC
        gambatte
        #DS
        melonds
        # N64
        mupen64plus
      ];
    })
  ];
}
