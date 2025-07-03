# 🎚️ Five Band Analog Audio Equalizer

This is a university hardware project involving the design and implementation of a **five-band analog audio equalizer** for real-time tonal control across the full audio spectrum (20 Hz – 20 kHz).

## 🔧 Project Highlights

- **Filter Design**: 4th-order Butterworth bandpass filters using Multiple Feedback (MFB) topology
- **Gain Control**: Inverting op-amp amplifiers with adjustable potentiometers
- **Display**: LED bar graph for each band using LM3914 IC
- **Power Supply**: Dual ±15V regulated supply using LM7815 & LM7915
- **Audio Interface**: 3.5mm AUX input and output ports

## 🛠️ Tools & Technologies

- **Simulation**: LTSpice, Proteus
- **PCB Design**: Altium Designer
- **Enclosure**: SolidWorks CAD
- **Microelectronics**: TL072 Op-Amps, LM3914, Passive Components

## 📐 Frequency Bands

| Band Name         | Frequency Range | Center Frequency |
|------------------|------------------|------------------|
| Bass             | 20 Hz – 300 Hz   | 77.46 Hz         |
| Lower Midrange   | 300 Hz – 1 kHz   | 547.72 Hz        |
| Midrange         | 1 kHz – 4 kHz    | 2 kHz            |
| Upper Midrange   | 4 kHz – 10 kHz   | 6.32 kHz         |
| Treble           | 10 kHz – 20 kHz  | 14.14 kHz        |

## 👥 Team & Contributions

| Name                  | Contribution                                |
|-----------------------|---------------------------------------------|
| Minura Ashen(me)    | Circuit design, simulation, PCB testing and debugging, documentation |
| Ravindu Kuruppuarachchi  | Equalizer PCB design, testing & debugging   |
| Kaveeshwara Bandara  | Display & Power PCB design, testing  |
| Nirwan Jayatissa   | Enclosure design, testing  |

## 📸 Project Gallery

(Insert images or gifs of the PCB, simulations, final product here)


## 📚 References

- [TL072 Datasheet – Texas Instruments](https://www.ti.com/product/TL072)
- [LM3914 Datasheet – Texas Instruments](https://www.ti.com/product/LM3914)
- [Butterworth Filter Theory](https://www.analog.com/media/en/training-seminars/design-handbooks/Basic-Linear-Design/Chapter8.pdf)

---


