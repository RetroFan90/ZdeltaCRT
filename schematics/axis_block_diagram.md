# Axis Block Diagram

This diagram shows the per-axis signal chain repeated for each of the 20 primary modulation domains (R, G, B, A, β, γ, θ, Δ, ε, ζ, η, κ, λ, μ, ν, ξ, ρ, σ, Ω).

```mermaid
flowchart LR
  subgraph DIGITAL_PLANE["Digital Framebuffer"]
    FB[16-bit @960 Hz Framebuffer]
  end

  subgraph AXIS_CHAIN["Per-Axis Signal Chain"]
    FB -->|16-bit Parallel| DAC[“DAC_X<br/>16-bit @10 GS/s”]
    DAC --> RC[“RC Snubber<br/>75 Ω, LPF”]
    RC  --> BUF[“Op-Amp Buffer<br/>OPA847-class”]
    BUF --> OUT[“Output → Neckboard”]
    BUF --> TAP[“Sense Tap → ADC”]
    TAP --> ADC[“ADC<br/>16-bit @1 MS/s”]
    ADC --> LUT[“FPGA LUT Correction”]
    LUT --> DAC
  end

  style DIGITAL_PLANE fill:#f9f,stroke:#333,stroke-width:1px
  style AXIS_CHAIN   fill:#ff9,stroke:#333,stroke-width:1px
