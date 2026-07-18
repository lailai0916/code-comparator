<div align="center">
  <h1>代码对拍器</h1>
  <p><a href="README.md">English</a> | 简体中文</p>
  <p>
    <img src="https://img.shields.io/github/last-commit/lailai0916/code-comparator?style=flat-square" alt="最后提交" />
    <img src="https://img.shields.io/github/languages/top/lailai0916/code-comparator?style=flat-square" alt="主要语言" />
    <img src="https://img.shields.io/github/repo-size/lailai0916/code-comparator?style=flat-square" alt="仓库大小" />
    <img src="https://img.shields.io/github/license/lailai0916/code-comparator?style=flat-square" alt="许可证" />
  </p>
</div>

轻量的信息学竞赛程序对拍器。它持续生成随机输入，分别运行标准程序与待测程序，并在
第一次出现输出差异时停止。

> [!WARNING]
>
> 参与对拍的程序必须使用标准输入输出，不要使用文件读写。

## 特性

⚡ **短反馈循环** —— 生成、运行、比较并重复，直到找到失败数据。

🧪 **可替换样例** —— 将 `gen.cpp`、`std.cpp` 与 `sol.cpp` 分别替换为当前题目的
生成器、标准程序与待测程序。

💻 **跨平台脚本** —— `lite.sh` 适用于类 Unix 系统，`lite.bat` 与 `main.bat`
适用于 Windows。

## 快速开始

Linux 或其他提供 GNU g++ 的环境：

```bash
g++ -std=c++17 -O2 gen.cpp -o gen
g++ -std=c++17 -O2 std.cpp -o std
g++ -std=c++17 -O2 sol.cpp -o sol
chmod +x lite.sh
./lite.sh
```

示例源文件使用 Apple Clang 不提供的 `bits/stdc++.h`。在 macOS 上，请通过 Homebrew
安装 GCC，并将上面的 `g++` 替换为 Homebrew 提供的带版本号 GNU g++；也可以把示例
头文件改为可移植的标准库头文件。

Windows：

```bat
g++ -std=c++17 -O2 gen.cpp -o gen.exe
g++ -std=c++17 -O2 std.cpp -o std.exe
g++ -std=c++17 -O2 sol.cpp -o sol.exe
lite.bat
```

`lite.*` 在仓库根目录比较临时文件。`main.bat` 会在 `data/` 中保留失败输入、标准
输出与实际输出，并带标签打印。

## 结构

```text
gen.cpp                             # 随机数据生成器
std.cpp                             # 可信标准程序
sol.cpp                             # 待测程序
lite.sh                             # Unix 对拍循环
lite.bat                            # Windows 精简循环
main.bat                            # 保留失败数据的 Windows 循环
```

## 许可

采用 [MIT License](LICENSE)。
