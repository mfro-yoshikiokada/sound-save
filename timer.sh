#!/bin/bash

# 音声ファイルのパス
MUSIC_DIR="/home/yoshiki/Music"
bell="$MUSIC_DIR/bell.wav"
one_sec="$MUSIC_DIR/1.wav"
two_sec="$MUSIC_DIR/2.wav"
three_sec="$MUSIC_DIR/3.wav"
four_sec="$MUSIC_DIR/4.wav"
one_min="$MUSIC_DIR/1min.wav"
five_min="$MUSIC_DIR/5min.wav"
ten_min="$MUSIC_DIR/10min.wav"

# 音声ファイルを再生する関数
play_sound() {
    aplay "$1"
}

# 現在の時間を取得
current_time=$(date +%H:%M)
current_day=$(date +%u)

# 毎日10時のスケジュール
if [ "$current_time" == "09:50" ] && [ "$current_day" -ge 1 ] && [ "$current_day" -le 5 ]; then
    play_sound "$ten_min"
    sleep 300
    play_sound "$five_min"
    sleep 240
    play_sound "$one_min"
    sleep 56
    play_sound "$four_sec"
    sleep 1
    play_sound "$three_sec"
    sleep 1
    play_sound "$two_sec"
    sleep 1
    play_sound "$one_sec"
    sleep 1
    play_sound "$bell"
fi

# 月曜日10時半のスケジュール
if [ "$current_time" == "10:20" ] && [ "$current_day" -eq 1 ]; then
    play_sound "$ten_min"
    sleep 300
    play_sound "$five_min"
    sleep 240
    play_sound "$one_min"
    sleep 56
    play_sound "$four_sec"
    sleep 1
    play_sound "$three_sec"
    sleep 1
    play_sound "$two_sec"
    sleep 1
    play_sound "$one_sec"
    sleep 1
    play_sound "$bell"
fi
