{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    autoPrune = {
      enable = true;
      dates = "weekly";
    };
  };

  virtualisation.oci-containers = {
    backend = "docker";
    containers = {
      whoami = {
        image = "traefik/whoami:latest";
        autoStart = true;
        ports = [ "127.0.0.1:8080:80" ];
      };
    };
  };
}
