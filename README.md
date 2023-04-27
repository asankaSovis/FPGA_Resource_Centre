# 🎛️ FPGA Resource Centre

---

## 🎛️ Introduction

The FPGA Resource Centre is built as an opensource hub to share HDL modules that perform common digital functions. It allows easy access to FPGA resources to engineers of all levels from students to experienced developers.

All modules will be shared under the [MIT License](https://github.com/asankaSovis/FPGA_Resource_Centre/blob/main/LICENSE): which allows the code to be used in any circumstance agreeing to provide attribution to the author. Anyone is free and invited to share their own modules to this repository if they consent to the MIT license. Including the author name in the module file adds the attribution to the author.

## 🎛️ Modules

### 01. ASK and FSK Transmitter

This module recieves a bitstream and transmit it through both ASK and FSK combined transmission method. Under ASK, two amplitude levels are used while under FSK, two frequecies are used. Thus, combining both allows two bits to be sent simultaneously.

> [More Details](https://github.com/asankaSovis/FPGA_Resource_Centre/blob/main/Verilog%20Modules/ASK%20and%20FSK%20Transmitter/README.md)

### 02. UART Transmitter/Reciever

These modules allow bitstreams to be sent and recieved through a transmission medium in the UART standard. In UART, transmission starts by a low bit and then eight of the bits are transmitted at a fixed bitrate (110, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 38400, 57600, 115200, 128000 or 256000 bits per second) and end with a high bit. Recieving works by looking for a bit shift to low and then waiting the correct timespace and taking 8 samples.

> [More Details]()

### 03. Hamming 74 Modulator/Demodulator

Hamming code (Hamming(7,4)) is a type of error-correcting code used to detect and correct errors that may occur when transmitting digital data. The code uses four data bits and adds three parity bits to form a seven-bit code word. These parity bits are calculated based on the data bits using a specific algorithm. The code can detect and correct single-bit errors, making it useful in applications where data integrity is critical, such as in computer memory or communication systems. The Hamming code was invented by Richard Hamming in the 1950s and is still widely used today.

> [More Details](https://github.com/asankaSovis/FPGA_Resource_Centre/blob/main/Verilog%20Modules/Hamming%2074%20Modulator-Demodulator/README.md)

`© 2023 Asanka Sovis`
