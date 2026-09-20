# Linear Control Systems: Modeling, Analysis & Design

MATLAB and Simulink work on modeling, analyzing, and designing feedback control
systems; from deriving a DC motor's transfer function from experimental data,
through stability analysis and PD/PID controller design, to a digital FIR
filter used to denoise and decode a hidden signal in an audio file.

## Highlights
- **PD → PID controller design:** building up a feedback controller in
  stages, analyzing steady state error and disturbance rejection as an
  integrator term is added ([`pid-controller-ball-beam`](pid-controller-ball-beam)

<img width="400" height="225" alt="controls_ballbeam" src="https://github.com/user-attachments/assets/3cecf0d3-aced-4c61-828b-1613cb7e54f0" />


- **Digital signal denoising:** designing an FIR notch filter to remove a
  2000 Hz noise spike from a `.wav` recording and recover the original signal
  ([`audio-filter-design`](audio-filter-design))
  
  <img width="300" alt="image" src="https://github.com/user-attachments/assets/62adaf01-95d5-4a1c-bd56-129a540d1752" />
- **Reusable analysis tools:** small MATLAB live scripts for Routh-Hurwitz
  stability checks, root locus visualization, controllability/observability
  checks, and transient response characteristics
  ([`matlab-tools`](matlab-tools))
- **Simulink modeling:** a block-diagram temperature control model
  ([`temperature-control-model`](temperature-control-model))
- **DC motor system identification:** derived a first-order transfer
  function for a DC motor from step response data and compared to the
  theoretical model


## Topics covered

Transfer function derivation, Laplace transforms and partial fraction
decomposition, state space representation, controllability and observability,
Routh-Hurwitz stability, root locus, steady state error, transient response
(overshoot, settling time, damping ratio), PD/PID compensator design, digital
FIR filtering.

## Tools

MATLAB (Symbolic Math Toolbox, Control System Toolbox, Signal Processing
Toolbox), Simulink.

