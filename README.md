# Logic Devices Programming

This repository contains coursework and project files for a Logic Devices Programming class, focusing on digital logic design and implementation using VHDL and Quartus block diagrams (.bdf).

## Repository Structure

- **InClassAssignments/**  
  Contains VHDL and block diagram files created during classroom instruction.

- **Labs/**  
  Includes lab exercises designed to reinforce concepts in digital design, such as combinational logic, sequential circuits, and finite state machines.

- **Project/**  
  Final course project files using VHDL or block diagrams.

- **FPGA_Pin_Assignments.xlsx**  
  Spreadsheet with FPGA pin mappings, useful for setting up I/O correctly on your FPGA board.

## File Types

- `.vhd`: VHDL source code files used to describe digital logic behavior.
- `.bdf`: Block Diagram Files used in Intel Quartus for schematic-based design.
- `.xlsx`: Excel file with pin configurations for FPGA hardware setup.

## Usage

To work with the files in this repository:

1. **Install Intel Quartus Prime**  
   You can download it [here](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html).

2. **Create a New Project in Quartus**  
   Since `.qpf` project files are not included, you'll need to:
   - Create a new Quartus project.
   - Add relevant `.vhd` or `.bdf` files to your project manually.
   - Use `FPGA_Pin_Assignments.xlsx` to correctly assign pins for your board.

3. **Compile and Upload**  
   - Compile the project and upload the design to your FPGA development board.

## Prerequisites

- Basic understanding of digital logic (e.g., gates, flip-flops, FSMs)
- Familiarity with VHDL and/or schematic entry in Quartus
- Intel Quartus Prime installed

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
