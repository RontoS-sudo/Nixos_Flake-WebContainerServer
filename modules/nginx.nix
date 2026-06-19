{ config, pkgs, ... }:

{
  services.nginx = {
    enable = true;
    recommendedProxySettings = true;
    recommendedTlsSettings = true;

    # Default catch-all server
    virtualHosts."_" = {
      default = true;
      locations."/" = {
        return = "200 'NixOS Server is running. Configure your domain in modules/nginx.nix'";
        extraConfig = "default_type text/plain;";
      };
    };
  };
}
