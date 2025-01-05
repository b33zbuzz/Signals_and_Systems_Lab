# Signals_and_Systems_Lab

Signals_and_Systems_Lab is a repository that contains resources, experiments, and documentation for learning and working with signals and systems concepts. This repository is designed to help students and enthusiasts explore practical aspects of signals and systems through MATLAB scripts, theoretical notes, and experiment reports.

## Features
- MATLAB scripts for signal processing and analysis.
- Experiment reports documenting procedures, results, and discussions.
- Supporting theoretical notes for understanding key concepts.

## File Structure
```
Signals_and_Systems_Lab/
├── Lab_1/
│   ├── ALL0000/
│   │   ├── F0000CH1.CSV         # Data from channel 1
│   │   ├── F0000TEK.BMP         # Bitmap image of the signal
│   │   └── F0000TEK.SET         # Tektronix settings file
│   ├── ALL0001/                 # Similar structure as ALL0000
│   ├── ALL0002/
│   ├── ALL0003/
│   ├── ALL0004/
│   ├── ALL0005/
│   ├── ALL0006/
│   ├── ALL0007/
│   ├── ALL0008/
│   ├── ALL0009/
│   ├── ALL0010/
│   └── ALL0011/
├── Lab_2/
│   ├── ALL0000/
│   ├── ALL0001/
│   ├── prelab2_1.m          # MATLAB script for prelab task 1
│   ├── prelab2_2.m          # MATLAB script for prelab task 2
│   └── signals2_prelab1.m   # MATLAB script for analyzing prelab signals
├── Lab_3/
│   ├── ALL0000/                 # Contains experiment data
│   ├── ALL0001/                 # Contains experiment data
│   ├── ALL0002/
│   ├── ALL0003/
│   ├── ALL0004/
│   ├── ALL0005/
│   ├── ALL0006/
│   ├── ALL0007/
│   ├── ALL0008/
│   ├── ALL0009/
│   ├── ALL0010/
│   ├── ALL0011/
│   ├── ALL0012/
│   ├── ALL0013/
│   ├── ALL0014/
│   ├── ALL0015/
│   ├── ALL0016/
│   ├── ALL0017/
│   ├── ALL0018/
│   ├── ALL0019/
│   ├── ALL0020/
│   ├── ALL0021/
│   ├── ALL0022/
│   ├── ALL0023/
│   ├── signals3_eval1.m         # MATLAB script for evaluation task 1
│   ├── signals3_eval2.m         # MATLAB script for evaluation task 2
│   ├── signals3_prelab1.m       # MATLAB script for prelab task 1 in Lab 3
│   ├── signals3_prelab2.m       # MATLAB script for prelab task 2 in Lab 3
│   └── signals3_prelab3.m       # MATLAB script for prelab task 3 in Lab 3
├── Lab_4/
│   ├── ALL0000/
│   ├── ALL0001/
│   ├── ALL0002/
│   ├── ALL0003/
│   ├── ALL0004/
│   ├── ALL0005/
│   ├── ALL0006/
│   ├── ALL0007/
│   ├── ALL0008/
│   ├── ALL0009/
│   ├── ALL0010/
│   ├── ALL0011/
│   ├── ALL0012/
│   ├── ALL0013/
│   ├── signals4_prelab1.m       # MATLAB script for prelab task 1 in Lab 4
│   └── signals4_prelab2.m       # MATLAB script for prelab task 2 in Lab 4
├── Lab_5/
│   ├── ALL0014/
│   ├── ALL0015/
│   ├── ALL0016/
│   ├── ALL0017/
│   ├── ALL0018/
│   ├── ALL0019/
│   ├── ALL0020/
│   ├── ALL0021/
│   ├── ALL0022/
│   ├── ALL0023/
│   ├── ALL0024/
│   ├── ALL0025/
│   ├── ALL0026/
│   ├── ALL0027/
│   ├── ALL0028/
│   ├── ALL0029/
│   ├── ALL0030/
│   ├── ALL0031/
│   └── signals5_prelab1.m       # MATLAB script for prelab task 1 in Lab 5
├── Lab_6/
│   ├── signals6_prelab1.m       # MATLAB script for prelab task 1 in Lab 6
│   └── signals6_prelab2.m       # MATLAB script for prelab task 2 in Lab 6
├── Lab_Manual.pdf               # Comprehensive manual for lab experiments
├── Signals1.pdf                 # Supporting notes for experiment 1
├── Signals2.pdf                 # Supporting notes for experiment 2
├── Signals3.pdf                 # Supporting notes for experiment 3
└── README.md                    # Project documentation
```

## Explanation of Files
### MATLAB Scripts
The `Lab_2`, `Lab_3`, `Lab_4`, `Lab_5`, and `Lab_6` folders contain MATLAB scripts for specific tasks, such as:
- **prelab2_1.m**: Calculates Bode plots for various components (capacitor, resistor, inductor).
- **prelab2_2.m**: Analyzes bandwidth and Q-factor for band-pass filters.
- **signals3_eval1.m**: Generates sine waves and their FFT for frequency-domain analysis.
- **signals3_eval2.m**: Similar to `signals3_eval1.m` but for different frequencies and amplitudes.
- **signals3_prelab1.m**: Simulates specific signal processing tasks in Lab 3.
- **signals3_prelab2.m**: Additional analysis tasks for Lab 3.
- **signals3_prelab3.m**: Advanced signal analysis tasks in Lab 3.
- **signals4_prelab1.m**: Simulates specific signal processing tasks in Lab 4.
- **signals4_prelab2.m**: Focuses on advanced prelab analysis for Lab 4.
- **signals5_prelab1.m**: MATLAB script for the prelab task in Lab 5.
- **signals6_prelab1.m**: Simulates specific signal processing tasks in Lab 6.
- **signals6_prelab2.m**: Additional analysis tasks for Lab 6.

### Experiment Data
Each `ALLXXXX` folder contains:
- **`.CSV` Files**: Raw data from oscilloscope channels.
- **`.BMP` Files**: Bitmap images representing waveforms.
- **`.SET` Files**: Settings files for Tektronix oscilloscopes.

### PDFs
- **Lab_Manual.pdf**: Detailed guidelines and instructions for all lab experiments.
- **Signals1.pdf, Signals2.pdf, Signals3.pdf**: Additional theoretical notes for experiments 1, 2, and 3 respectively.

## Tools Required
- MATLAB: To run the `.m` scripts for analysis and visualization.
- Tektronix Oscilloscope: For capturing experimental data.
- Any text editor or IDE for modifying scripts.
- PDF Viewer: To read the lab manual and supporting notes.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/b33zbuzz/Signals_and_Systems_Lab.git
   ```
2. Navigate to the desired lab folder (e.g., `Lab_2` or `Lab_3`).
3. Open MATLAB and run the `.m` scripts for the experiment.
4. Use the `.CSV` and `.BMP` files for analysis and cross-verification of results.
5. Refer to the PDFs for theoretical background and detailed instructions.

## Acknowledgments
This repository was developed to support the Signals and Systems Lab course. Special thanks to the contributors and academic staff who guided the development of the experiments and materials.

---

For questions or feedback, please open an issue in the repository or contact the repository owner directly.
