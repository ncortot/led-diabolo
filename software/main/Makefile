.PHONY: all build hex upload fuses clean

# The name of your project (used to name the compiled .hex file)
TARGET := $(notdir $(CURDIR))

# Set to 8000000L or 16000000L (fuses are configured for 8MHz)
F_CPU := 8000000L

# Define Arduino version for libraries
ARDUINO = 105

# Directory to build in
BUILDDIR := $(abspath $(CURDIR)/build)

#************************************************************************
# Location of Arduino utilities, Toolchain, and Libraries.
#
# To change these settings locally, create an `env.mk` file at the root
# of this project and set the required parameters, e.g.:
#
#   ARDUINO_PATH := /Applications/Arduino.app/Contents/Java
#   ISP_SERIAL := /dev/tty.usbmodem123456
#
#************************************************************************

# Include local settings if defined
-include ../env.mk

# Serial port used for programming
ISP_SERIAL ?= /dev/ttyACM0

# Path location for Arduino
ARDUINO_PATH ?= /usr/share/arduino

# Location for Arduino libraries
LIBRARY_PATH ?= $(abspath ../lib)

# Configuration file for avrdude
#ifneq ("$(wildcard "$(ARDUINO_PATH)/hardware/tools/avr/etc/avrdude.conf*")", "")
	AVRDUDE_OPTIONS ?= "-C$(ARDUINO_PATH)/hardware/tools/avr/etc/avrdude.conf"
#endif

# Add the avr compiler to the PATH
export PATH := $(ARDUINO_PATH)/hardware/tools/avr/bin:$(PATH)

#************************************************************************
# Settings below this point usually do not need to be edited
#************************************************************************

# Arduino version 1.5 required
CORE_PATH = $(ARDUINO_PATH)/hardware/arduino/avr/cores/arduino
VARIANT_PATH = $(ARDUINO_PATH)/hardware/arduino/avr/variants/standard

# CPPFLAGS = compiler options for C and C++
CPPFLAGS = -mmcu=atmega328p -g -Os -w -Wall -ffunction-sections -fdata-sections -DF_CPU=$(F_CPU) -Isrc -I$(CORE_PATH) -I$(CORE_PATH)/avr-libc -I$(VARIANT_PATH)

# compiler options for C++ only
CXXFLAGS = -std=gnu++0x -felide-constructors -fno-exceptions -fno-rtti

# compiler options for C only
CFLAGS =

# set arduino define if given
ifdef ARDUINO
	CPPFLAGS += -DARDUINO=$(ARDUINO)
endif

# linker options
LDFLAGS = -Os -Wl,--gc-sections -mmcu=atmega328p -T$(LDSCRIPT)

# additional libraries to link
LIBS = -lm

# names for the compiler programs
CC = avr-gcc
CXX = avr-g++
AR = avr-ar
OBJCOPY = avr-objcopy
SIZE = avr-size

# automatically create lists of the sources and objects
INO_FILES := $(wildcard src/*.ino)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
AC_FILES := $(wildcard $(CORE_PATH)/*.c) $(wildcard $(CORE_PATH)/avr-libc/*.c)
ACPP_FILES := $(wildcard $(CORE_PATH)/*.cpp) $(wildcard $(CORE_PATH)/avr-libc/*.cpp)
LC_FILES := $(wildcard $(LIBRARY_PATH)/*/*.c)
LCPP_FILES := $(wildcard $(LIBRARY_PATH)/*/*.cpp)

# include paths for libraries
L_INC := $(foreach lib, $(filter %/, $(wildcard $(LIBRARY_PATH)/*/)), -I$(lib))

ARDUINO_SOURCES := $(AC_FILES:.c=.o) $(ACPP_FILES:.cpp=.o) $(LC_FILES:.c=.o) $(LCPP_FILES:.cpp=.o)
ARDUINO_OBJS := $(foreach src, $(ARDUINO_SOURCES), $(BUILDDIR)/$(src))

SOURCES := $(C_FILES:.c=.o) $(CPP_FILES:.cpp=.o) $(INO_FILES:.ino=.o)
OBJS := $(foreach src, $(SOURCES), $(BUILDDIR)/$(src))

all: hex

build: $(BUILDDIR)/$(TARGET).elf

hex: $(BUILDDIR)/$(TARGET).hex

upload: $(BUILDDIR)/$(TARGET).hex
	avrdude -p atmega328p $(AVRDUDE_OPTIONS) -c arduino -P $(ISP_SERIAL) -U flash:w:$(BUILDDIR)/$(TARGET).hex:i

fuses:
	avrdude -p atmega328p $(AVRDUDE_OPTIONS) -c arduino -P $(ISP_SERIAL) -U lfuse:w:0xa2:m -U hfuse:w:0xda:m -U efuse:w:0x05:m

$(BUILDDIR)/%.o: %.c
	@echo -e "[CC]\t$<"
	@mkdir -p "$(dir $@)"
	@$(CC) $(CPPFLAGS) $(CFLAGS) $(L_INC) -o "$@" -c "$<"

$(BUILDDIR)/%.o: %.cpp
	@echo -e "[CXX]\t$<"
	@mkdir -p "$(dir $@)"
	@$(CXX) $(CPPFLAGS) $(CXXFLAGS) $(L_INC) -o "$@" -c "$<"

$(BUILDDIR)/%.o: %.ino
	@echo -e "[CXX]\t$<"
	@mkdir -p "$(dir $@)"
	@$(CXX) $(CPPFLAGS) $(CXXFLAGS) $(L_INC) -o "$@" -x c++ -include Arduino.h -c "$<"

$(BUILDDIR)/arduino.a: $(ARDUINO_OBJS) $(LDSCRIPT)
	@echo -e "[AR]\t$@"
	@$(AR) rcs $@ $^

$(BUILDDIR)/$(TARGET).elf: $(OBJS) $(LDSCRIPT) $(BUILDDIR)/arduino.a
	@echo -e "[LD]\t$@"
	@$(CC) -mmcu=atmega328p -Wl,-Os -Wl,--gc-sections -o $@ $^ -lm

$(BUILDDIR)/%.hex: $(BUILDDIR)/%.elf
	@echo -e "[HEX]\t$@"
	@$(SIZE) "$<"
	@$(OBJCOPY) -O ihex -R .eeprom "$<" "$@"

# compiler generated dependency info
-include $(OBJS:.o=.d)

clean:
	@echo Cleaning...
	@rm -rf "$(BUILDDIR)"
