<h1 align="center">
  <a href="https://www.lailai.one/docs/contest/personal/code-comparator">Code Comparator</a>
</h1>
<p align="center">
  <a href="README.md">English</a> | <a href="README.zh-Hans.md">简体中文</a>
</p>

## # Project Introduction

A lightweight code comparator for Olympiad in Informatics (OI).

## # Getting Started

```bash
git clone https://github.com/lailai0916/code-comparator.git
cd code-comparator
```

> [!Warning]
> All C++ programs must not use file I/O operations.

## # Project Structure

```bash
code-comparator
├── main.bat                       # Batch script
├── lite.bat                       # Lightweight batch script
├── lite.sh                        # Shell version of the batch script
├── gen.cpp                        # Source code of the data generator
├── std.cpp                        # Source code of the standard solution
├── sol.cpp                        # Source code of the program under test
├── gen.exe                        # Compiled data generator
├── std.exe                        # Compiled standard solution
└── sol.exe                        # Compiled program under test
```

## # License

This project licensed under [MIT License](LICENSE).
