{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Maybe later
    #(retroarch.override {
    #  cores = with libretro; [
    #    #3DS
    #    citra
    #    # NES
    #    bsnesS
    #    #GBA
    #    mgba
    #    #GBC
    #    gambatte
    #    #DS
    #    melonds
    #    # N64
    #    mupen64plus
    #  ];
    #})
  ];
}
