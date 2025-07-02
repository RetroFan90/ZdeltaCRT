# Zdelta-Class CRT Rendering Instrument

An ultra-precision, 20-axis, beam-synchronized visual mainframe (True 1:1, Pure 100% control).

## Contents

- **docs/**: Whitepaper (MD + LaTeX), glossary  
- **bom/**: Bill of Materials (CSV + MD) per axis  
- **schematics/**: Modular signal-chain block-diagrams (SVG placeholders)  
- **render/**: Textual exploded-view layer breakdown  
- **scripts/fpga/**: Verilog core + testbench for the LUT fusion engine  

## Getting Started

1. Clone this repo.  
2. Render `docs/whitepaper.md` to PDF (`pandoc`/`latexmk`).  
3. Inspect `bom/axis_bom.csv` for procurement.  
4. Use `scripts/fpga/zdelta_core.v` + `zdelta_tb.v` in Vivado/ModelSim.  
5. Hand off `schematics/*.svg` and `render/exploded_view_layout.txt` to CAD/art team.  

## License

Released under the CERN Open Hardware Licence v2.0  
See `LICENSE` for details.
