# Lab 6: VHDL Code for Combinational Circuits – Code Converter

## Objective
- Design and simulate a **BCD-to-Excess-3 Code Converter** using VHDL.
- Design and simulate a **Binary-to-Gray Code Converter** using VHDL.
- Verify the functionality of both converters using **GHDL** and **GTKWave**.

---

## Theory

### 1. BCD-to-Excess-3 Code Converter
A BCD-to-Excess-3 converter transforms a Binary Coded Decimal (BCD) number into its corresponding Excess-3 code by adding **3 (0011)** to the BCD input. Excess-3 is a self-complementing code widely used in digital arithmetic circuits.

**Examples:**

| Decimal | BCD | Excess-3 |
|---------|------|----------|
| 0 | 0000 | 0011 |
| 1 | 0001 | 0100 |
| 5 | 0101 | 1000 |
| 9 | 1001 | 1100 |

### 2. Binary-to-Gray Code Converter
Gray code is a binary numbering system in which only **one bit changes** between two consecutive values, reducing transition errors in digital systems.

Conversion Rules:
- G3 = B3
- G2 = B3 XOR B2
- G1 = B2 XOR B1
- G0 = B1 XOR B0

---

## Files Included

### BCD-to-Excess-3 Converter
- `bcd_to_xs3.vhd`
- `bcd_xs3_tb.vhd`

### Binary-to-Gray Converter
- `bin_to_gray.vhd`
- `gray_tb.vhd`

---

## GHDL Commands

### BCD-to-Excess-3 Converter

```bash
ghdl -a bcd_to_xs3.vhd bcd_xs3_tb.vhd
ghdl -e BCD_XS3_TB
ghdl -r BCD_XS3_TB --vcd=bcd_xs3.vcd
gtkwave bcd_xs3.vcd
```

### Binary-to-Gray Converter

```bash
ghdl -a bin_to_gray.vhd gray_tb.vhd
ghdl -e GRAY_TB
ghdl -r GRAY_TB --vcd=gray.vcd
gtkwave gray.vcd
```

---

## Expected Output

### BCD-to-Excess-3

| BCD Input | Excess-3 Output |
|-----------|-----------------|
| 0000 | 0011 |
| 0001 | 0100 |
| 0101 | 1000 |
| 1001 | 1100 |

### Binary-to-Gray

| Binary Input | Gray Output |
|-------------|-------------|
| 0000 | 0000 |
| 0001 | 0001 |
| 0010 | 0011 |
| 0011 | 0010 |
| 0100 | 0110 |
| 1111 | 1000 |

---

## Output (Screenshot)

### 1. BCD-to-Excess-3 Waveform

![BCD TO EXCESS-3 Output](BCDtoExcess3\output.png)

---

### 2. Binary-to-Gray Waveform

![BINARY TO GRAY Output](Bina_to_Gray\output.png)

---

## Discussion

In this experiment, two different code converters were designed and simulated using VHDL. The BCD-to-Excess-3 converter successfully converted valid BCD inputs into their corresponding Excess-3 codes by adding three to each input value. The Binary-to-Gray converter correctly generated Gray code outputs using XOR operations, ensuring that only one bit changed between consecutive values. The simulation waveforms obtained from GTKWave matched the expected outputs, confirming the correctness of both VHDL designs.

---

## Conclusion

The objectives of the experiment were successfully achieved. The BCD-to-Excess-3 and Binary-to-Gray code converters were implemented, simulated, and verified using GHDL and GTKWave. The waveform results matched the theoretical outputs, demonstrating a clear understanding of combinational code converters and VHDL-based digital circuit design.