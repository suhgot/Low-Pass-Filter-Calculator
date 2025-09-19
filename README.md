# 📉 Low-Pass Filter Calculator

> A MATLAB tool for calculating **passband ripple (Rp)** and **stopband attenuation (Rs)** from tolerance values — making filter design faster and easier ⚡

---

## 🧠 About

This project helps you quickly convert **tolerance specifications** (like how much ripple or attenuation is allowed) into **dB values** used in low-pass filter design.  
It’s especially useful for signal processing, audio, or communications engineers looking to size their filters correctly. 🎧📡

---

## 📂 File Overview

| File | Description |
|---|---|
| `RPOT_Rp_Rs.m` | Core function that computes **Rp** and **Rs** from tolerance values |

---

## ⚙️ How It Works

1. Input passband and stopband tolerances.  
2. The script converts them into **dB scale** using the RPOT (Ripple vs Tolerance) formulas.  
3. Outputs **Rp** and **Rs** for use in filter order calculations.  

📌 This lets you directly plug results into filter design equations.

---

## 💻 Usage

```matlab
% Example inputs
RpTol = 0.01;   % 1% ripple
RsTol = 0.001;  % stopband tolerance

% Call the function
[Rp, Rs] = RPOT_Rp_Rs(RpTol, RsTol);

% Display results
disp(['Passband ripple (Rp): ', num2str(Rp), ' dB']);
disp(['Stopband attenuation (Rs): ', num2str(Rs), ' dB']);
