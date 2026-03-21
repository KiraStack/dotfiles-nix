// Environment paths
const home = io::env("HOME", "");
const localData = io::env("LOCALAPPDATA", "");

// Systems
const linux = SYSTEM.platform == "Linux";
const windows = SYSTEM.platform == "Windows";
const darwin = SYSTEM.platform == "Darwin";

// Path join function
fn join(base, sub) {
    if base.ends_with("/") {
        return base + sub;
    } else {
        return base + "/" + sub;
    }
};

// Config directory
const configDir = join(home, ".config");

// Packages
export const eggs = #{
    bspwm: #{ enabled: linux, targets: join(configDir, "bspwm") },
    eww: #{ enabled: linux, targets: join(configDir, "eww") },
    home: #{ enabled: linux, strategy: "merge", targets: home },
    nix: #{ enabled: linux, strategy: "put", targets: "/etc/nixos" },
    picom: #{ enabled: linux, targets: join(configDir, "picom") },
    rofi: #{ enabled: linux, targets: join(configDir, "rofi") },
    rofimoji: #{ enabled: linux, targets: join(home, ".local/share/rofimoji") },
    scripts: #{ enabled: linux, targets: join(home, ".local/bin") },
    icons: #{ enabled: linux, targets: join(home, ".icons") },
    sxhkd: #{ enabled: linux, targets: join(configDir, "sxhkd") },
};
