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
### 3. Thermal stand (Heating-cooling)
