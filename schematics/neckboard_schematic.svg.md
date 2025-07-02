flowchart TB
  subgraph Neckboard
    COAX["20× Coax In<br/>(R,G,B,A,β…Ω)"]
    COAX --> CATK["Cathode Drivers<br/>R/G/B High-Voltage"]
    COAX --> GRID["Alpha Grid Modulator"]
    COAX --> PHASE["β Phase Coil Drivers"]
    COAX --> FOCUS["θ Focus Coil Bank"]
    COAX --> CONTR["Δ Contrast Pre-Emphasis"]
    COAX --> CONV["ε/ζ Convergence & Geometry"]
    CATK & GRID & PHASE & FOCUS & CONTR & CONV --> TUBE["CRT Tube"]
    subgraph Telemetry
      T1[Landing Sensor]
      T2[Spot-Size Sensor]
      T3[Beam-Current Sensor]
    end
    T1 & T2 & T3 --> FPGA_FB["Feedback → Bridgebox"]
  end
