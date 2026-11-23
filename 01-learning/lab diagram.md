---
title: "Lab Diagram"
format:
  html:
    css: markdown.css
---

<img width="600" height="802" alt="image" src="https://github.com/user-attachments/assets/6cbd532a-5587-482f-8a97-fe7ba6d16d09" />

- **SCADA MAPS** (Mitsubishi Adroit Process Suite):
  - **SCADA** (Supervisory Control and Data Acquisition)
  - **Adroit**: SCADA/HMI software tailored for Windows and designed to streamline process control, manufacturing systems, and open automation tasks (Sources: MAPS SCADA)
  - The MAPS takes raw data from front-end devices like a **PLC** or **RTU** in the process field and transforms it into an easy-to-understand graphical representation, whilst adding the ability to log history, alarming and eventing.  
    
- **iQ-R** (Mitsubishi Electric Programmable Controllers MELSEC): Programmable automation controllers capable of handling diversified automation control needs (Sources: Mitsubishi Electric)

- **Mitsubishi GOT** (Graphic Operation Terminal): a type of **HMI**, usually connected to an actuator (**VFD**) or a brain (**PLC**).
  GOTs usually come in the form of a touchscreen with at least one network connection point (usually ethernet, but in some cases, serial) (Sources: My Mitsubishi Support)
  - **VFD** (vaiable-frequency drive): a type of AC(alternating current) motor drive that controls speed and torque by varying the frequency of the input electricity (Sources: Valve Magazine)

## Three Control Processes
### 1. High-speed magnetic levitation process (Maglev)
**Maglev** (magnetic levitation): a method by which an object is suspended with no support other than magnetic fields (Sources: Wikipedia)
  - The Maglev system is nonlinear, open-loop, unstable, time-varying, and frictionless
  - Basic principle of operation is to apply the voltage to an electromagnet to keep a ferromagnetic sphere levitated.
  - The controller maintains the equilibrium state of two forces (the gravitational and electromagnetic) to keep the sphere at a desired distance from the magnet.
  - The Process is extremely fast; the controller's sample time should be as short as 1 ms.
    (Sources: OT_testbed_description.pdf)
    
### 2. MPS FESTO workstation (Factory)
The Factory mimics the industrial processing of parts.
The workstation used has binary controls.
- Control is performed using valves (coils on the valves) that supply air to the actuators that set them in motion.
- On/off type valves are used.
    
#### Solenoid valves:
Electromechanical devices engineered to control the flow of liquids or gases automatically. Instead of requiring a human operator to physically turn a handle or adjust a wheel, a solenoid valve uses an electrical signal to open, close, or regulate fluid lines in milliseconds.
  
##### How it works:
  (Sources: ECAS on YouTube)
  
  <img width="600" height="337" alt="image" src="https://github.com/user-attachments/assets/38f6d123-528b-4ae2-b1ee-2b4866727bc9" />
  
  1. When the valve is at rest and no electrical current is running through the coil, the valve is in its de-energised state. In a standard normally closed valve, the return spring pushes the plunger downward. The seal at the bottom of the plunger presses tightly against the valve's inner opening (orifice). The pressure of the incoming fluid often assists in holding the seal shut. As long as no power is applied, the valve remains completely sealed and no fluid or gas can pass through.
  2. An electric current (direct or alternating) is delivered to the solenoid coil.
  3. Electricity flows through the copper windings and generates a concentrated electromagnetic field through the centre of the coil. This magnetic field acts as a powerful magnet, attracting the ferromagnetic plunger.
  4. The magnetic force overcomes the tension of the return spring, pulling the plunger upward toward the top of the tube.
  5. As the plunger snaps upward, it lifts the seal off the orifice. This clears the central passageway, allowing the fluid or gas to flow through the valve body from the inlet port to the outlet port.
  6. As long as electric power is continuously supplied to the coil, the magnetic field remains active, holding the plunger in the open position against the compressed spring.
       
- The measurement is performed by sensors confirming the position of the item being transported (binary signal).

### 3. Thermal stand (Heating-cooling)
The user influences the temperature distribution in the facility through controllable fans and heaters.
