[English](./README.md) | [中文](./README_CN.md) | [JAPAN](./README_JP.md)

# ComfyUI_Scripts

ComfyUI の自動化スクリプトのコレクションです。

## `DownloadModelFromHF.bat`

このスクリプトは、HuggingFace モデルの直接ダウンロードができないネットワークの問題を解決するために作成されました。初回のセットアップには以下の手順が必要です：

1. huggingface-hub のインストール
2. 環境変数の設定
3. モデルのダウンロード：指定された Hugging Face リポジトリ名とローカルの保存パスを入力してください

## `CondaManager.bat`

1. 下载并安装 Miniconda
2. 创建一个名为 "aigc" 的虚拟环境
3. 删除 "aigc" 虚拟环境