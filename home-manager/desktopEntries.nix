{ config, pkgs, ... }:
{
  # these files are stored at /run/current-system/sw/share/applications
  xdg.desktopEntries = {
    # hide htop
    htop = {
      name = "htop";
      noDisplay = true;
    };

    # hide btop
    btop = {
      name = "btop++";
      noDisplay = true;
    };

    # hide KDE Connect entries
    "org.kde.kdeconnect.sms" = {
      name = "org.kde.kdeconnect.sms";
      noDisplay = true;
    };
    "org.kde.kdeconnect-settings" = {
      name = "org.kde.kdeconnect-settings";
      noDisplay = true;
    };
    "org.kde.kdeconnect.nonplasma" = {
      name = "org.kde.kdeconnect-settings";
      noDisplay = true;
    };

    # fix VS Code entries
    code-url-handler = {
      name = "Visual Studio Code";
      noDisplay = false;
      exec = "code %F";
      icon = "vscode";
    };
    code = {
      name = "Visual Studio Code";
      noDisplay = true;
    };

    # GPU in brave
    brave-browser = {
      name = "Brave Web Browser";
      genericName = "Web Browser";
      exec = "brave %U --enable-features=VaapiVideoDecodeLinuxGL,TouchpadOverscrollHistoryNavigation";
      startupNotify = true;
      terminal = false;
      icon = "brave-browser";
      type = "Application";
      categories = [ "Network" "WebBrowser" ];
      mimeType = [
        "application/pdf"
        "application/rdf+xml"
        "application/rss+xml"
        "application/xhtml+xml"
        "application/xhtml_xml"
        "application/xml"
        "image/gif"
        "image/jpeg"
        "image/png"
        "image/webp"
        "text/html"
        "text/xml"
        "x-scheme-handler/http"
        "x-scheme-handler/https"
        "x-scheme-handler/ipfs"
        "x-scheme-handler/ipns"
      ];
    };
  };
}