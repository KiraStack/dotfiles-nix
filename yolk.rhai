let home = io::env("HOME", "");
let localData = io::env("LOCALAPPDATA", "");

// Platform constants
let system = #{
    linux: SYSTEM.platform == "Linux",
    windows: SYSTEM.platform == "Windows",
    darwin: SYSTEM.platform == "Darwin"
};

// Function to merge into home
fn home_merge() {
    #{ targets: io::env("HOME", ""), enabled: true, strategy: "merge", templates: [] /* copied as is */ }
}

// Eggs
export const eggs = #{
    bspwm: #{ targets: home + "/.config/bspwm", enabled: system.linux, templates: [] },
    eww: #{ targets: home + "/.config/eww", enabled: system.linux, templates: [] },
    nix: #{ targets: "/etc/nixos", enabled: system.linux, templates: [] },
    picom: #{ targets: home + "/.config/picom", enabled: system.linux, templates: [] },
    rofi: #{ targets: home + "/.config/rofi", enabled: system.linux, templates: [] },
    scripts: #{ targets: home + "/.local/bin", enabled: system.linux, templates: [] },
    sxhkd: #{ targets: home + "/.config/sxhkd", enabled: system.linux, templates: [] },
    xinitrc: home_merge()
};
