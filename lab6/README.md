# Lab 6: VHDL Code for Code Converters (Binary to Gray and Binary to Excess-3)

## Objective

- To design and implement a 4-bit Binary to Gray code converter using VHDL.
- To design and implement a 4-bit Binary to Excess-3 code converter using VHDL.
- To simulate both code converters using GHDL.
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
| bin_to_gray.vhd | Binary to Gray converter |
| gray_tb.vhd | Binary to Gray Testbench |
| bcd_to_xs3.vhd | Binary to Excess-3 converter |
| bcd_xs3_tb.vhd | Binary to Excess-3 Testbench |
| output.png | Binary to Gray GTKWave waveform |
| output.png | Binary to Excess-3 GTKWave waveform |
| README.md | Lab report |

---

## Procedure

1. Write the VHDL code for the Binary to Gray converter.
2. Write the VHDL code for the Binary to Excess-3 converter.
3. Create separate testbenches for both circuits.
4. Compile the VHDL files using GHDL.
5. Elaborate the testbenches.
6. Run the simulations and generate the VCD files.
7. Open the generated VCD files using GTKWave.
8. Verify the output waveforms.

---

## GHDL Commands

### Binary to Gray

```bash
ghdl -a bin_to_gray.vhd gray_tb.vhd
ghdl -e GRAY_TB
ghdl -r GRAY_TB --vcd=gray.vcd
gtkwave gray.vcd
```

### Binary to Excess-3

```bash
ghdl -a bcd_to_xs3.vhd bcd_xs3_tb.vhd
ghdl -e BCD_XS3_TB
ghdl -r BCD_XS3_TB--vcd=bcd_xs3.vcd
gtkwave bcd_xs3.vcd
```

---

## Expected Output

### Binary to Gray

| Binary | Gray |
|--------|------|
| 0000 | 0000 |
| 0001 | 0001 |
| 0010 | 0011 |
| 0011 | 0010 |
| 0100 | 0110 |
| 0101 | 0111 |
| 0110 | 0101 |
| 0111 | 0100 |

### Binary to Excess-3

| Binary | Excess-3 |
|--------|----------|
| 0000 | 0011 |
| 0001 | 0100 |
| 0010 | 0101 |
| 0011 | 0110 |
| 0100 | 0111 |
| 0101 | 1000 |
| 0110 | 1001 |
| 0111 | 1010 |

---

## Output (Screenshots)

### Binary to Gray GTKWave Output

![Binary to Gray GTKWave Output](Bina_to_Gray\output.png)

### Binary to Excess-3 GTKWave Output

![Binary to Excess-3 GTKWave Output](BCDtoExcess3\output.png)

---

# Discussion and Conclusion

In this laboratory experiment, the Binary to Gray and Binary to Excess-3 code converters were successfully designed and implemented using VHDL. Both circuits were compiled, elaborated, and simulated using GHDL, and the resulting waveforms were observed using GTKWave.

The simulation results verified that the Binary to Gray converter correctly generated the corresponding Gray code for each binary input, while the Binary to Excess-3 converter correctly produced the Excess-3 code by adding three to the binary input. The generated waveforms matched the expected conversion tables.

This experiment enhanced the understanding of code conversion techniques, combinational logic design, VHDL programming, simulation, and waveform analysis. Hence, the objectives of the experiment were successfully achieved.