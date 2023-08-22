{ pkgs, ... }:
{

    programs.firefox = {
        enable = true;
#        package = pkgs.wrapFirefox {
#           extraPolicies = {
#                CaptivePortal = false;
#                DisableFirefoxStudies = true;
#                DisablePocket = true;
#                DisableTelemetry = true;
#                DisableFirefoxAccounts = false;
#                NoDefaultBookmarks = true;
#                OfferToSaveLogins = false;
#                OfferToSaveLoginsDefault = false;
#                PasswordManagerEnabled = false;
#                FirefoxHome = {
#                    Search = true;
#                    Pocket = false;
#                    Snippets = false;
#                    TopSites = false;
#                    Highlights = false;
#                };
#                UserMessaging = {
#                    ExtensionRecommendations = false;
#                    SkipOnboarding = true;
#                };
##            };
#       };
        profiles = {
            none = {

              extensions = with pkgs.inputs.firefox-addons; [
                ublock-origin
                https-everywhere
                bitwarden
                clearurls
                floccus
                ghostery
                privacy-redirect
                languagetool
                disconnect
	        proton-pass
	        proton-vpn
              ];
                id = 0;
                name = "none";
                search = {
                    force = true;
                    default = "Google";
                    engines = {
                        "Nix Packages" = {
                            urls = [{
                                template = "https://search.nixos.org/packages";
                                params = [
                                    { name = "type"; value = "packages"; }
                                    { name = "query"; value = "{searchTerms}"; }
                                ];
                            }];
                            definedAliases = [ "@np" ];
                        };
                        "NixOS Wiki" = {
                            urls = [{ template = "https://nixos.wiki/index.php?search={searchTerms}"; }];
                            iconUpdateURL = "https://nixos.wiki/favicon.png";
                            updateInterval = 24 * 60 * 60 * 1000;
                            definedAliases = [ "@nw" ];
                        };
                        "Wikipedia (en)".metaData.alias = "@wiki";
                        "Google".metaData.hidden = true;
                        "Amazon.com".metaData.hidden = true;
                        "Bing".metaData.hidden = true;
                        "eBay".metaData.hidden = true;
                    };
                };
                settings = {
                    "general.smoothScroll" = true;
                };
                extraConfig = ''
                    user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
                    user_pref("full-screen-api.ignore-widgets", true);
                    user_pref("media.ffmpeg.vaapi.enabled", true);
                    user_pref("media.rdd-vpx.enabled", true);
                '';
            };
        };
    };
}
