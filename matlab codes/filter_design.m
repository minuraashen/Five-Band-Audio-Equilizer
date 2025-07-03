%filter characteristics
f_l=20;
f_h=300;
f_m=sqrt(f_l*f_h); %mid frequency of the filter
B=f_h-f_l;  %bandwidth of the filter
Q=f_m/B;   %pole Quality factor
Omega=1/Q;  %normalized bandwidth
alpha=3.813;  
a1=1.4142;  
b1=1;
A_m=1;    %overall gain of the filter


f_m1=f_m*alpha;    %filter 1
f_m2=f_m/alpha;    %filter 2

Q_i=Q*(1+alpha^2)*b1/(alpha*a1);
Q_1=1.31;
A_mi=(Q_i/Q)*sqrt(A_m/b1);

%decide C1
C_1=10e-9;
%decide C2
C_2=100e-9;

%Calculate resistor values for filter 1
R3=Q_i/(pi*f_m1*C_1);
R1=R3/(2*A_mi);
R2=(A_mi*R1)/(2*(Q_i^2)+A_mi);

%Calculate resistor values for filter 2
R6=Q_i/(pi*f_m2*C_2);
R4=R6/(2*A_mi);
R5=(A_mi*R4)/(2*Q_i^2+A_mi);


fprintf('f_m1 = %.2f\n', f_m1);
fprintf('f_m2 = %.2f\n', f_m2);
fprintf('Q_i = %.2f\n', Q_i);
fprintf('A_mi = %.4f\n', A_mi);

fprintf('R1 = %.2f\n', R1);
fprintf('R2 = %.2f\n', R2);
fprintf('R3 = %.2f\n', R3);
fprintf('R4 = %.2f\n', R4);
fprintf('R5 = %.2f\n', R5);
fprintf('R6 = %.2f\n', R6);


