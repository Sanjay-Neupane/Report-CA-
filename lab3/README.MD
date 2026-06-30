# Lab 3: VHDL Code for Combinational Circuits (Encoder and Decoder)

## Objective

- To design and implement a 4-to-2 Encoder using VHDL.
- To design and implement a 2-to-4 Decoder using VHDL.
- To simulate both circuits using GHDL.
- To verify the outputs using GTKWave.

---

## Tools Used

- Visual Studio Code
- GHDL
- GTKWave
- Git & GitHub

---

## Files Included

| File Name | Description |
|-----------|-------------|
| encoder_4to2.vhd | 4-to-2 Encoder design |
| decoder_2to4.vhd | 2-to-4 Decoder design |
| encoder_tb.vhd | Encoder testbench |
| decoder_tb.vhd | Decoder testbench |
| decoder.vcd | Simulation waveform of decoder|
| encoder.vcd | Simulation waveform of encoder|
| output.png | GTKWave waveform screenshot |
| README.md | Lab report |

---

## Procedure

1. Write the VHDL code for the 4-to-2 Encoder.
2. Write the VHDL code for the 2-to-4 Decoder.
3. Create testbenches for both circuits.
4. Compile the VHDL files using GHDL.
5. Elaborate the testbench.
6. Run the simulation to generate the VCD file.
7. Open the VCD file using GTKWave.
8. Verify the waveform with the expected outputs.

---

## GHDL Commands

```bash
ghdl -a encoder_4to2.vhd encoder_tb.vhd
ghdl -e ENCODER_TB
ghdl -r ENCODER_TB --vcd=encoder.vcd
gtkwave encoder.vcd

ghdl -a decoder_2to4.vhd decoder_tb.vhd
ghdl -e DECODER_TB
ghdl -r DECODER_TB --vcd=decoder.vcd
gtkwave decoder.vcd
```

---

## Expected Output

### 4-to-2 Encoder

| Inputs (D3 D2 D1 D0) | Output (Y1 Y0) |
|----------------------|----------------|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

### 2-to-4 Decoder

| Input (A1 A0) | Output (Y3 Y2 Y1 Y0) |
|--------------|----------------------|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

---

## Output (Screenshot/Image)

## Decoder Waveform

![GTKWave Output](Decoder\output.png)

## Encoder Waveform

![GTKWave Output](Encoder\Output1.png)

---

# Discussion and Conclusion

In this laboratory experiment, a 4-to-2 Encoder and a 2-to-4 Decoder were successfully designed and implemented using VHDL. The design files and testbenches were compiled, elaborated, and simulated successfully using GHDL, and the waveforms were observed in GTKWave.

The simulation results confirmed that the encoder correctly converted the active input into its corresponding binary output, while the decoder activated only the selected output line based on the binary input. The generated waveforms matched the expected truth tables.

This experiment improved the understanding of combinational circuit design, VHDL programming, simulation, and waveform verification. Hence, the objectives of the experiment were successfully achieved.