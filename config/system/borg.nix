{ pkgs, ... }:
{

  services.borgbackup.jobs.lextop-backup = {
    paths = "";
    encryption.mode = "";
    environment.BORG_RSH = "";
    repo = "";
    compression = "";
    startAt = "";
  };
}
