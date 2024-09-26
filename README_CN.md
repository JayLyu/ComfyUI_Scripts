[English](./README.md) | [中文](./README_CN.md) | [JAPAN](./README_JP.md)

# ComfyUI_Scripts

ComfyUI 自动化脚本集合。

## `DownloadModelFromHF.bat`

由于网络问题导致无法下载 HuggingFace 模型，可以使用该脚本。初次使用需要：

1. 安装 huggingface-hub
2. 设置环境变量
3. 从 HuggingFace 下载模型：输入仓库名称和本地存储路径

## `CondaManager.bat`

1. 下载并安装 Miniconda
2. 创建一个名为 "aigc" 的虚拟环境
3. 删除 "aigc" 虚拟环境