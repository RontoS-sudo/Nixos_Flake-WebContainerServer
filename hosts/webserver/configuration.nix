{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nginx.nix
    ../../modules/docker.nix
  ];

  boot.loader.grub.device = "/dev/sda"; 

  networking.hostName = "webserver";
  networking.firewall.allowedTCPPorts = [ 22 80 443 ];

  services.openssh = {
    enable = true;
    settings.PermitRootLogin = "prohibit-password";
    settings.PasswordAuthentication = false;
  };
  

  environment.systemPackages = with pkgs; [
    git vim curl htop docker-compose
  ];

  time.timeZone = "Asia/Jakarta";
  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  system.stateVersion = "26.05";
}
