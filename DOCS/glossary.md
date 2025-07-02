# Glossary

**Axis**  
A modulation dimension in the Zdelta signal chain (20 primary + meta-axes).

**Beam Landing Sensor**  
Optical or Hall sensors detecting electron beam position on the shadowmask.

**Convergence**  
The process of aligning R/G/B electron beams so they overlap precisely.

**DAC**  
Digital-to-Analog Converter; in this project, 16-bit @ 10+ GS/s per axis.

**FPGA LUT Fusion Core**  
The programmable logic block that applies per-axis correction look-up tables.

**HDR (High Dynamic Range)**  
Wide luminance range; managed here via the Alpha (A) axis controlling grid current.

**LUT**  
Look-Up Table; stores correction curves for beam drift, gamma, etc.

**Meta-Axes**  
System-level dimensions (Manufacturing, Compliance, Calibration, UI, Sustainability).

**OCXO**  
Oven-Controlled Crystal Oscillator; provides the global sync reference (Ω axis).

**TEC**  
Thermo-Electric Cooler; used to stabilize temperature of each DAC and buffer.

**True 1:1**  
Full-scale, per-axis beam control with zero shared rails, zero abstraction.

**Zdelta**  
Project codename; “Z” for finality, “delta” for infinitesimal precision.
