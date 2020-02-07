function y=catcher(~,x)
%%Model Parameters
r0=0.348;
K1=6000;
K2=3000;
C10=0.001;
C20=0.0005;
r2=0.57;

%%AA value and Correlation coefficient
m=0.5;
h=0.5;
alpha=x(3);

r1=r0*(1+m*alpha);
C1=C10*(1+h*alpha);
C2=C20*(1+h*alpha);


y=zeros(2,1);


%Differential equation
y(1)=r1*x(1)*(1-x(1)/K1)-C1*x(1)*x(2);  
y(2)=-r2*x(2)*(1+x(2)/K2)+C2*x(1)*x(2);
y(3)=0;






