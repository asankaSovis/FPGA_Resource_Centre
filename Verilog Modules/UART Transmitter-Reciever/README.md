# UART Transmitter/Reciever

These modules allow bitstreams to be sent and recieved through a transmission medium in the UART standard. In UART, transmission starts by a low bit and then eight of the bits are transmitted at a fixed bitrate (110, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 38400, 57600, 115200, 128000 or 256000 bits per second) and end with a high bit. Recieving works by looking for a bit shift to low and then waiting the correct timespace and taking 8 samples.

Can be used along with the [Bidirectional Transciever](https://github.com/asankaSovis/Bidirectional_Transmitter)

```
Written Date: 27/042023
Filename: UART_Reciever.v, UART_Transmitter.v
Last Edited: 27/04/2023
Author: Asanka Sovis
```

`(C) 2023, Asanka Sovis`
