# jetbot用コマンド

# reboot
sudo reboot
sudo systemctl restart nvargus-daemon
# shutdown
sudo poweroff
sudo shutdown -h now
# ssh
ssh username@ip
# SSHターミナル 手動起動
# https://qiita.com/iwatake2222/items/a3bd8d0527dec431ef0f#vnc-server%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%A8%E8%A8%AD%E5%AE%9A
x0vncserver -display :0 -passwordfile ~/.vnc/passwd

# 各プロセスのリソース使用状況
top
# プロセス実行状況
ps aux
# 使用率確認
vmstat -t
vmstat 10 -t
# GPU含めた使用確認？
tegrastats

# os確認
cat /etc/issue
# CPUのスペック確認
cat /proc/cpuinfo
# ディスク空き
df -h
# メモリ空き
free -tm

# Config確認
cat /etc/nvpmodel.conf

# 動作モード確認
nvpmodel -p --verbose
# 電力モード確認
sudo nvpmodel -q
# 有効なコア数、動作周波数の確認
sudo jetson_clocks --show
# 5Wモードへ切り替え
sudo nvpmodel -m 1
# 10Wモードへ切り替え
sudo nvpmodel -m 0

# I2Cでデバイスが認識できているかの確認
sudo i2cdetect -r -y 1

# Camera 認識(/dev/video0デバイス)確認
ls -ltrh /dev/video*
ls -al /dev/video0
# Camera映像の表示
nvgstcapture

# Camera 不具合対応
sudo systemctl restart nvargus-daemon
journalctl -u jetbot_jupyter >> jetbot_jupyter_log.txt
journalctl -u nvargus-daemon >> nvargus_daemon_log.txt

# fan 制御
sudo sh -c 'echo 100 > /sys/devices/pwm-fan/target_pwm'
sudo sh -c 'echo 50 > /sys/devices/pwm-fan/target_pwm'
sudo sh -c 'echo 0 > /sys/devices/pwm-fan/target_pwm'
# fan 確認
cat /sys/devices/pwm-fan/target_pwm
