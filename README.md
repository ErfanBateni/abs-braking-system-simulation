# ABS (Anti-lock Braking System) Modeling and Simulation in MATLAB/Simulink

Comprehensive simulation and analytical report of an Anti-lock Braking System (ABS) developed as part of the Automotive Electronics course at Sharif University of Technology.

---

## 📌 Project Overview
This project investigates the dynamics of vehicular braking and the implementation of slip-control mechanisms. The primary objective is to maintain the wheel slip ratio around the optimal peak (approximately **15%**) to maximize the tire-road friction coefficient, prevent wheel lock-up, ensure directional stability, and reduce stopping distance.

---

## ⚙️ Key Technical Findings & Analysis

1. **Wheel & Vehicle Speed Dynamics:**
   * **Without ABS:** Heavy braking causes the wheel speed to drop to zero instantly (locking up), while the vehicle body continues sliding across the road with minimal deceleration.
   * **With ABS:** The controller dynamically modulates braking pressure, preventing prolonged wheel lock and keeping wheel speed synchronized with vehicle deceleration.

2. **Wheel Slip Optimization:**
   * **Without ABS:** Slip ratio rapidly reaches **100%**, causing a total loss of steering control.
   * **With ABS:** A Bang-Bang control strategy successfully regulates the slip ratio around the target optimum of **15%**.

3. **Friction Coefficient & Braking Torque:**
   * By keeping slip at 15%, the tire-road friction coefficient ($\mu$) is consistently maintained at the peak of the friction curve across various road conditions (e.g., Dry/Wet Asphalt).
   * Braking torque exhibits a controlled oscillatory behavior (alternating between zero and maximum) to avoid wheel lock-up.

---

## 🛠️ Tools & Technologies
* **MATLAB & Simulink**
* **Control Systems & Vehicle Dynamics Principles**

---

## 📂 Repository Structure
* `model.slx` — The primary MATLAB/Simulink ABS simulation model.
* `Report_P2_400100792.pdf` — Complete academic project report containing detailed plots and analytical descriptions.

---

## 🚀 How to Run
1. Clone this repository or download the source files.
2. Open MATLAB and ensure you are in the project directory.
3. Open the Simulink model file (`.slx`).
4. Run the simulation to analyze vehicle and wheel speed behaviors through the scopes.
