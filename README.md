# cloud9

## 起動と終了
### 起動

```
docker-compose up -d
```
### 終了

```
docker-compose down
```

## 動作確認
ブラウザで以下のURLを開くとcloud9のトップ画面が表示される。

```
http://localhost:8080
```

![cloud9_top](https://user-images.githubusercontent.com/14244767/66695569-4087ca00-ecfe-11e9-9d65-a91e67e39689.png)



ログインユーザー名とパスワードのデフォルトは以下の通り。

（docker-compose.yml内で指定されているため変更可能）

```
USERNAME: user
PASSWORD: pass
```



## ディレクトリ構成
```
├── Dockerfile
├── README.md
├── docker-compose.yml
└── workspace
```



- workspace

  ホストとコンテナが共有するディレクトリ。cloud9で作成したソースコードが格納される。

## コーディングと実行
1. Python3.6が使用できる状態になっているため、[File]-[New File]からpythonfファイルを新規作成し、コーディングを進める。

2. Runを実行、もしくはターミナルでpythonコマンドを実行すると、コードが実行される。

## ライブラリの追加

Pythonのライブラリはpipコマンドで追加する。「Window - New Terminal」からターミナルを起動しpipコマンドを実行できる。# cloud9-python
