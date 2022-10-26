# openHAB server using docker

## 使い方

### openHAB の管理
#### スクリプトを用いる方法
1. 起動
```shell
$ launch.sh start
```
2. 起動 (バックグラウンドで動作させる場合)
```shell
$ launch.sh start -d
```
3. 起動 (ポートを指定する場合)
```shell
$ launch.sh start -p 80
```
4. 停止
```shell
$ launch.sh stop
```
5. 再起動
```shell
$ launch.sh restart -d -p 80
```
6. ステータス確認
```shell
$ launch.sh status
```

より詳細な使い方については以下のコマンドを実行
```shell
$ launch.sh help
```

#### systemd を用いる手法
+ 事前準備
    1. `systemd_conf/openhab.service` を `/etc/systemd/system` にコピー
    ```shell
    # cp systemd_conf/openhab.service /etc/systemd/system/
    ```
    2. コピーした `openhab.service` を書き換える
    ```shell
    # vim /etc/systemd/system/openhab.service
    ```
+ 管理
    + 起動
    ```shell
    # systemctl start openhab.service
    ```
    + 停止
    ```shell
    # systemctl stop openhab.service
    ```
    + ステータス確認
    ```shell
    # systemctl status openhab.service
    ```
    + 自動起動
    ```shell
    # systemctl enable openhab.serive
    ```
