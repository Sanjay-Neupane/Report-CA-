# Lab 4: VHDL Code for Combinational Circuits (Multiplexer and Demultiplexer)

## Objective

- To design and implement a 4-to-1 Multiplexer using VHDL.
- To design and implement a 1-to-4 Demultiplexer using VHDL.
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
| mux_4to1.vhd | 4-to-1 Multiplexer design |
| mux_tb.vhd | Multiplexer Testbench |
| demux_1to4.vhd | 1-to-4 Demultiplexer design |
| demux_tb.vhd | Demultiplexer Testbench |
| Output.png | Multiplexer GTKWave waveform |
| output.png | Demultiplexer GTKWave waveform |
| README.md | Lab report |

---

## Procedure

1. Write the VHDL code for the 4-to-1 Multiplexer.
2. Write the VHDL code for the 1-to-4 Demultiplexer.
3. Create separate testbenches for both circuits.
4. Compile the VHDL files using GHDL.
5. Elaborate the testbenches.
6. Run the simulations and generate the VCD files.
7. Open the generated VCD files using GTKWave.
8. Verify the output waveforms.

---

## GHDL Commands

### Multiplexer

```bash
ghdl -a mux_4to1.vhd mux_tb.vhd
ghdl -e MUX_TB
ghdl -r MUX_TB --vcd=mux.vcd
gtkwave mux.vcd
```

### Demultiplexer

```bash
ghdl -a demux_1to4.vhd demux_tb.vhd
ghdl -e DEMUX_TB
ghdl -r DEMUX_TB --vcd=demux.vcd
gtkwave demux.vcd
```

---

## Expected Output

### 4-to-1 Multiplexer

| Select (S1 S0) | Output |
|----------------|--------|
| 00 | I0 |
| 01 | I1 |
| 10 | I2 |
| 11 | I3 |

### 1-to-4 Demultiplexer

| Input | Select (S1 S0) | Active Output |
|-------|----------------|---------------|
| 1 | 00 | Y0 |
| 1 | 01 | Y1 |
| 1 | 10 | Y2 |
| 1 | 11 | Y3 |

---

## Output (Screenshots)

### Multiplexer GTKWave Output

![Multiplexer GTKWave Output](MUX/Output.png)

### Demultiplexer GTKWave Output

![Demultiplexer GTKWave Output](DEMUX/output1.png)

---

# Discussion and Conclusion

In this laboratory experiment, a 4-to-1 Multiplexer and a 1-to-4 Demultiplexer were successfully designed and implemented using VHDL. The circuits were compiled, elaborated, and simulated using GHDL, and the resulting waveforms were analyzed using GTKWave.

The simulation results confirmed that the multiplexer correctly selected one of the four input signals based on the select lines, while the demultiplexer correctly routed the input signal to the selected output line according to the select inputs. The observed waveforms matched the expected outputs.

This experiment improved the understanding of combinational circuit design, multiplexing and demultiplexing operations, VHDL programming, simulation, and waveform analysis. Hence, the objectives of the experiment were successfully achieved.