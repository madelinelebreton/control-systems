# Linear Control Systems: Modeling, Analysis & Design

MATLAB and Simulink work on modeling, analyzing, and designing feedback control
systems — from deriving a DC motor's transfer function from experimental data,
through stability analysis and PD/PID controller design, to a digital FIR
filter used to denoise and decode a hidden signal in an audio file.

## Highlights

- **DC motor system identification** — deriving a first-order transfer
  function for a DC motor from step-response data and comparing it to the
  theoretical model ([`labs/lab2-dc-motor-transfer-function`](labs/lab2-dc-motor-transfer-function))
- **PD → PID controller design** — building up a feedback controller in
  stages, analyzing steady-state error and disturbance rejection as an
  integrator term is added ([`labs/lab4-pd-compensator-design`](labs/lab4-pd-compensator-design),
  [`labs/lab5-pid-controller-design`](labs/lab5-pid-controller-design))
- **Digital signal denoising** — designing an FIR notch filter to remove a
  2000 Hz noise spike from a `.wav` recording and recover the original signal
  ([`labs/tutorial3-audio-filter-design`](labs/tutorial3-audio-filter-design))
- **Reusable analysis tools** — small MATLAB Live Scripts for Routh-Hurwitz
  stability checks, root locus visualization, controllability/observability
  checks, and transient response characteristics
  ([`matlab-tools`](matlab-tools))
- **Simulink modeling** — a block-diagram temperature control model
  ([`simulink-models`](simulink-models))

## Repository structure

```
labs/                 Prelab reports and lab work, one folder per lab
matlab-tools/          Reusable scripts/live scripts for common control-theory
                       calculations (stability, root locus, transient response)
worked-examples/       Smaller practice problems (Laplace transforms, partial
                       fraction decomposition, circuit and mechanical system
                       transfer function derivation)
simulink-models/       Simulink block-diagram models
```

## Topics covered

Transfer function derivation, Laplace transforms and partial fraction
decomposition, state-space representation, controllability and observability,
Routh-Hurwitz stability, root locus, steady-state error, transient response
(overshoot, settling time, damping ratio), PD/PID compensator design, digital
FIR filtering.

## Tools

MATLAB (Symbolic Math Toolbox, Control System Toolbox, Signal Processing
Toolbox), Simulink.

## Running this code

Most files are MATLAB Live Scripts (`.mlx`) — open them directly in MATLAB.
Plain `.m` scripts can be run from the MATLAB command line. The Simulink
model requires a MATLAB/Simulink install to open.

`labs/tutorial3-audio-filter-design/filter_design.mlx` references its input
`.wav` file by an absolute local path — update the path to point at
`input_signal_with_noise.wav` in the same folder before running.

## Note on scope

This repo intentionally leaves out lecture slides, textbook/vendor training
material, and past exam and quiz content — those either aren't original work
or aren't appropriate to redistribute publicly. What's here is original
coursework: lab reports, prelabs, and standalone analysis scripts.
