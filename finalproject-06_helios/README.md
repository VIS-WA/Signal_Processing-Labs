# FinalProject - 06_Team Helios

## Abstract
We consider a interleaved, multichannel sampling structure and perform the
usual Nyquist- Shannon sampling 1 for a given signal. We show that overall
SQNR ratio of the signal can be increased by varying the quantizer step size,
changing the relative time-delays between different channels.

### Other details

- All simulations are done which were included in the refernce paper.
- Codes required are included in ```Codes``` Folder. ```Simulations_Script.m``` has the code in sequence for the simulations including plots and should be uncommented appropriately before compiling. ```mini.m``` is a function file used to find sigma (emin)^2 values for given quantizer step sizes and time-delays of the channels.
- All the obtained results are stored in the 	```Results``` folder.
- Final and Mid reports are also uploaded.

### Details regarding excecution of code
- Lines 1-9 are to be uncommented before compiling the code anytime.
- for the first part of simulation, uncomment lines 8 to 24
- for second part, uncomment lines 26 to 31
- for third part, uncomment lines 33 to 49

### Explanations and other comments for codes

- When the first part of simulation is compiled, it outputs a plot between \gamma , tau1 and tau2. Also t1, t2 variables are created to return the values for tau1 and tau2 where gamma is the maximum. Also a compass is plotted just for intuition purposes. Lastly ratio os average power is found out for a different set of time-delays.
- For the second part of simulation, ratio of average power for chosen quantiser to uniform quantiser is outputted for different combinations of (3,4,5)-> 6 combinations are possible. Also compass was used for intutive purposes.
- For the third simulation, it outputs a plot between ratio of \sigma_emin^2 for uniform time-delays to variable time-delays , tau1 and tau2. Also t1, t2 variables are created to return the values for tau1 and tau2 where the ratio mentioned above is the maximum. Also a compass is plotted just for intuition purposes.
