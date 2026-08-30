struct InjectionConfig {
    c: bool,
    rust: bool,
    zig: bool,
    assembly: bool,
    golang: bool,
    javascript: bool,
    html: bool,
    python: bool,
    Cpp: bool,
    Java: bool,
    Csharp: bool,
    css: bool,
}

const CONFIG: InjectionConfig = InjectionConfig {
    c: true,
    rust: true,
    zig: true,
    assembly: true,
    golang: true,
    javascript: true,
    html: true,
    python: false,
    Cpp: false,
    Java: false,
    Csharp: false,
    css: true,
};
