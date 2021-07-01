# Lab1

Naming:
Codes and figures are named by their qn number and sub part (2abc denotes all 3 subparts are combined in 1 code).Functions names are named according to those mentioned in the handout. Qn 1a and the function fourierscript.m are same .


Note:
Some programs that are required to display plots are commented as they have been used as functions and recurisvely run in other scripts and to avoid crowding we have done so.But necessary plots are saved in Results folder.


Input\Output\Comments\Explanations:

Q1_a)Value of N is required to be entered and it outputs the vector of Ak's and the plots are saved in results folder.
c) The signal we have taken is a rectangular pulse with amplitude 1 from -1/4 to 1/4 and time period 1.

Q2_abc) This question doesnt require any input ,it outputs the plot containing the original and reconstructed triangle function and prints the maximum absolute error and mean squared error between the 2 signals respectively.

Q2_d) This question doesnt require any input and the plots that are to be plotted are saved in Results, they can also be plotted by running the code.Here we ran for n=1:2:50 since it's taking a long time to excecute as the n increases the time for each iteration is also increasing.

Q3_a)The Fourier series coefficients {ak}=2/T * (cos(kwoT1)-2)/jkwo , where wo = 2*pi/T . This can be easily found from the analysis equation where x(t)=-1 for [-T1,0] and x(t)=1 for [0,T1].

Q3_bcd) Values of N,T should be entered while T1=0.1 is taken,plot for reconstructed graph is included in Results and N=10,T=1 is considered.As T is increased,the magnitude of Ak decreases.Also as N is increased , we can observe that the shape of the curve has increasing resemblence with the square wave and the sinusoids appear to be dampening but their frequencies are increased (the wave sort of appear compressed) but their heights appear constant.

Q4_a)The signal we have here is an even signal y=|x|.This signal is passed into the function in 1.1 and it returns the fourier coefficents of the signal.Since the signal is even we get real coefficients and imaginary part of the coefficients is 0.
Q4_b)The signal here is y=x,which is an odd signal.Again this signal is passed into the functionn in 1.1 .Since this signal is odd the fourier coefficients are all imaginary thier real parts are 0.
Q4_c)The results are as expected real coeficients for (a) and imaginary for (b).A is even symmetry B is odd symmetry.

