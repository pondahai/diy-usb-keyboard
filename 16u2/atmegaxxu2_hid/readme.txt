20200421
建立arduino uno 16u2的原始碼
預計加入功能：
修改原本的16u2原始碼
將usbserial改成usbhidkeyboard

與328p的交換碼格式：
[scancode] [press/release]

原始碼是從/Application/Arduino.app/Contents/Java/hardware/arduino/avr/firmwares/atmegaxxu2
裡面拷貝出來的
資料夾改名為
atmegaxxu2_hid

cross-compilier
因為mac系統已經升級，所以原本的 AVR CrossPack的avr-gcc不能用了
所以改成從Arduino.app裡面做連結出來
步驟：
cd /usr/local
sudo ln -s /Applications/Arduino.app/Contents/Java/hardware/tools/avr avr
export PATH=/usr/local/avr/bin:$PATH

原始碼合併原arduino-uno 8u2 serial原始碼以及LUFA keyboard demo的原始碼
合成
Arduino-serialusbkeyboard
已經修改成功


20200422
安裝minicom
sudo brew install minicom

找到usb方面問題的解答，本來問題是如果敲入15個字後，程式就會亂發射按鍵，結果是因為usb程式碼裡面的掃描碼緩衝區設成128，但是掃描碼其實要256大小才放得下。

測試中


命令列燒錄16u2的指令
將UNO用USB接電腦
可直接在命令列下達以下命令

先清空
sudo dfu-programmer atmega16u2 erase

燒錄這裡的serial轉usb鍵盤程式
sudo dfu-programmer atmega16u2 flash Arduino-serialusbkeyboard.hex

如果要復原原本的UNO功能，則執行以下命令
sudo dfu-programmer atmega16u2 flash Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex --suppress-bootloader-mem
