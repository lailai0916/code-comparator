<div align="center">
  <h1>Code Comparator</h1>
  <p>English | <a href="README.zh-Hans.md">简体中文</a></p>
  <p>
    <img src="https://img.shields.io/github/last-commit/lailai0916/code-comparator?style=flat-square" alt="last commit" />
    <img src="https://img.shields.io/github/languages/top/lailai0916/code-comparator?style=flat-square" alt="top language" />
    <img src="https://img.shields.io/github/repo-size/lailai0916/code-comparator?style=flat-square" alt="repo size" />
    <img src="https://img.shields.io/github/license/lailai0916/code-comparator?style=flat-square" alt="license" />
  </p>
</div>

## Project Introduction

A lightweight stress-testing harness for Olympiad in Informatics programs. It repeatedly
generates random input, runs a trusted solution and a candidate solution, then stops at
the first differing output.

> [!WARNING]
>
> The compared programs must use standard input and output. Do not use file I/O.

## Project Features

⚡ **Tight feedback loop** — generate, execute, compare, and repeat until a failing case
appears.

🧪 **Editable fixtures** — replace `gen.cpp`, `std.cpp`, and `sol.cpp` with the generator,
reference solution, and candidate for the current problem.

💻 **Cross-platform runners** — `lite.sh` covers Unix-like systems; `lite.bat` and
`main.bat` cover Windows.

## Getting Started

Linux or another environment with GNU g++:

```bash
g++ -std=c++17 -O2 gen.cpp -o gen
g++ -std=c++17 -O2 std.cpp -o std
g++ -std=c++17 -O2 sol.cpp -o sol
chmod +x lite.sh
./lite.sh
```

The sample sources use `bits/stdc++.h`, which Apple Clang does not provide. On macOS,
install GCC with Homebrew and replace `g++` above with Homebrew's versioned GNU g++
executable, or replace the sample headers with portable standard-library headers.

Windows:

```bat
g++ -std=c++17 -O2 gen.cpp -o gen.exe
g++ -std=c++17 -O2 std.cpp -o std.exe
g++ -std=c++17 -O2 sol.cpp -o sol.exe
lite.bat
```

`lite.*` compares temporary files in the repository root. `main.bat` keeps the failing
input, expected output, and actual output under `data/` and prints them with labels.

## Project Structure

```bash
code-comparator/
├── gen.cpp                         # random test generator
├── std.cpp                         # trusted reference solution
├── sol.cpp                         # candidate solution
├── lite.sh                         # Unix stress-test loop
├── lite.bat                        # minimal Windows loop
├── main.bat                        # Windows loop with retained failure data
└── LICENSE                         # Code license
```

## License

This project's code is licensed under [MIT License](LICENSE).
