# NES as an 8-Bit PC

This is very much a work in progress, and should be treated as such.

Based on the work done by [Joseph Marlin](https://github.com/jmarlin/) on his YouTube channel [TrackZero](https://www.youtube.com/c/TrackZeroFutzin).
Attaching a standard floppy disk controller (FDC) to a NES-001 game console with BASIC and Monitor in ROM.

I've separated the FDC to a mezzanine card which can be extended outside the case on a 40-pin IDC cable.
Partly due to the relative scarcity of the chips, and partly due to the complexity of the signal routing involved.
The FDC and additonal expansion cards share an 8-bit data and 8-bit address bus. The bus has eight select lines in addition to the FDC selects.

Expansion cards should be connected with 40-pin IDC edge connectors. The expansion bus cable should have three twists as show in expansion.txt.
