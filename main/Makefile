.PHONY: fuses upload

SERIAL=/dev/ttyACM0

TARGET=.build/uno/firmware.hex

$(TARGET):
	ino build

upload:
	ino build
	avrdude -p atmega328p -c arduino -P /dev/ttyACM0 -b 57600 -U flash:w:$(TARGET):i

fuses:
	avrdude -p atmega328p -c arduino -P $(SERIAL) -b 57600 -U lfuse:w:0xe2:m -U hfuse:w:0xda:m -U efuse:w:0x05:m
