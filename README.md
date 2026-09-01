# Leyernet Programming Language

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
**Author:** Crust  
**Initial Release:** June 25, 2026  

Leyernet is a modern, zero-bloat, high-performance systems programming language built for absolute hardware control, direct machine code generation, and low-level development.

---

## 🎯 Purpose & Use Cases

* **Bare-Metal & Systems Development:** Direct operation on CPUs and memory without runtime bloat or LLVM overhead.
* **Cybersecurity & Ethical Hacking:** Precise memory manipulation, predictable static behavior, and total binary transparency.
* **Modern Low-Level Engineering:** A bridge for both veteran system engineers and beginners learning bare-metal concepts.
* **Zero-Abstraction Execution:** Predictable performance where every instruction maps directly to hardware logic.

---

## 🏗️ System Abstraction Layers

Leyernet operates at the lowest software layers of the computing stack:

| Layer | Components / Technology | Leyernet Presence |
| :--- | :--- | :--- |
| **GUI** | Graphical User Interfaces | High Abstraction |
| **High-Level Scripts** | Python, Managed Runtimes | High Abstraction |
| **Shell / TTY / PTY** | Bash, Terminal Emulators, Automation | User Interface Layer |
| **Operating System** | Fedora, Debian, Arch, FreeBSD, NetBSD | Systems Layer |
| **Kernel** | Linux, Windows NT, XNU (C, Rust, Assembly) | **Core Leyernet Target** |
| **BIOS / UEFI** | Bootloaders, Firmware (Dell, Acer, Purism) | **Core Leyernet Target** |
| **Hardware** | Processors, Memory, FPGAs, Peripherals | **Direct Silicon Interfacing** |

---

## 🛠️ The Implementation & Tooling Stack

| Language / Tool | Purpose in Leyernet Ecosystem |
| :--- | :--- |
| **Assembly (x86_64 / ARM)** | Direct CPU, register, and motherboard management |
| **Rust** | Memory safety and security enforcement patterns |
| **Zig** | Unstable ecosystem tracking (0.16.0 → 0.17.0), CPU & GPU control |
| **C** | Raw memory manipulation and system calls |
| **Odin** | Clean, readable low-level control |
| **Forth** | Minimalist code organization and stack manipulation |
| **Verilog** | Hardware design for ARM, FPGA, and custom opcode generation |

---

## 🚫 Anti-Goals & Ban List

Leyernet intentionally rejects high-level abstractions, virtual machines, garbage collectors, and language complexity:

* **C++:** Rejected to avoid unnecessary language complexity, `vtables`, and hidden runtimes.
* **JavaScript / TypeScript / HTML / CSS:** Restricted strictly to compatibility layers; not for Leyernet development.
* **Python / Ruby / PHP / Lua:** Banned from design inspiration; Leyernet strictly enforces native static compilation.
* **Erlang / Elixir / Clojure / Java:** Virtual machines (JVM, BEAM) and managed runtimes are completely avoided.
* **Haskell:** Functional programming is not a primary design goal.
* **Machine Learning / AI Frameworks:** Out of scope for the language core.
* **C# / Swift / Dart / Go / Delphi / Kotlin / Objective-C:** No influence planned.

---

## 📝 About the Author

> *Leyernet was conceptualized, designed, and built from scratch as an experiment in absolute hardware control, zero-dependency binary emission, and static memory safety. The entire architecture, parser, static analyzer, and hexadecimal emitters were implemented when I was 13 years old.*

---

## 📄 License

This project is open-source software licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for full details.
