# Bridgebox Schematic Overview

- **DAC Bank**: 20× DAC modules with clock distribution
- **RC/EMI Filter Board**: Matched 75 Ω snubbers
- **Buffer Amp Board**: 20× OPA847 islands
- **FPGA Core**: LUT fusion, sync PLL, telemetry interface
- **Power & TEC Controller**: Linear PSUs, LC π-filters, Peltier drivers
- **Connectors**:
  - 20× RG-179 coax outputs
  - LVDS Sync In/Out
  - Feedback twisted-pair In
  - Analog + Digital Power
