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
    bspwm: #{ targets: join(configDir, "bspwm"), enabled: linux, templates: [] },
    eww: #{ targets: join(configDir, "eww"), enabled: linux, templates: [] },
    home: #{ targets: home, enabled: linux, strategy: "merge", templates: [] },
    nix: #{ targets: "/etc/nixos", enabled: linux, strategy: "put", templates: [] },
    picom: #{ targets: join(configDir, "picom"), enabled: linux, templates: [] },
    rofi: #{ targets: join(configDir, "rofi"), enabled: linux, templates: [] },
    rofimoji: #{ targets: join(home, ".local/share/rofimoji"), enabled: linux, templates: [] },
    scripts: #{ targets: join(home, ".local/bin"), enabled: linux, templates: [] },
    icons: #{ targets: join(home, ".icons"), enabled: linux },
    sxhkd: #{ targets: join(configDir, "sxhkd"), enabled: linux, templates: [] },
};
