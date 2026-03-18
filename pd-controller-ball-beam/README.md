# Ball-and-Beam Control System Using PD Compensator

## Overview
This project implements a **PD (Proportional-Derivative) controller** to stabilize and control the position of a ball on a beam using MATLAB and Simulink. The project involves modeling a **cascade electromechanical system**, designing an ideal and practical PD compensator, and addressing real-world issues such as sensor noise and underdamped responses.



## System Description
The system consists of two interconnected components:

1. **SRV02 Rotary Servo Plant** – a DC motor with gearbox and angle feedback.
2. **BB01 Ball and Beam Plant** – a beam with a steel ball whose position depends on the beam's tilt.

The motor tilts the beam (inner loop), while the controller adjusts the tilt to maintain the ball at a desired position (outer loop). For this lab, the servo motor is assumed **perfect**, reducing the system to a **double integrator**:

$$
P_{bb}(s) = \frac{0.419}{s^2}
$$



## Control Strategy
- **Controller Type:** PD (Proportional-Derivative) with a high-pass filtered derivative for noise reduction.
- **Design Method:** Root locus technique in MATLAB to place system poles according to desired specifications:
  - Settling Time T_{s} = 3 s
  - Overshoot 5%
- **Practical Considerations:** Filtered derivative reduces noise amplification caused by the real-world ball position sensor.



## Key Equations

- Plant transfer function:  

$$
P_{bb}(s) = \frac{0.419}{s^2}
$$

- PD Controller (Practical):  

$$
C(s) = K_c \left( z + \frac{\omega_f s}{s + \omega_f} \right)
$$

- Damping ratio and natural frequency (from design specs):  

$$
\zeta = -\frac{\ln(\%OS/100)}{\sqrt{\pi^2 + \ln^2(\%OS/100)}}, \quad 
\omega_n = \frac{4\zeta}{T_s}
$$



## Results
- Step response demonstrates **stabilization of the ball at the desired position**.
- Oscillations were reduced by adjusting the **zero location (z)** of the PD controller, improving damping.
- The system reaches a steady-state with minimal overshoot and acceptable settling time.
  
![Step Response](results/step_response.png)
![Root Locus](results/root_locus.png)



## Challenges & Debugging
- Initial system oscillated persistently despite decreasing amplitude due to **underdamped response**.
- Adjusting **zero location** increased damping and reduced oscillations.
- Highlighted the practical limitation of PD control: **steady-state error is not completely eliminated** without integral action.



## Tools Used
- MATLAB (Control System Toolbox)
- Simulink
- Quarc interface for virtual plant simulation

