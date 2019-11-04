clear; clc; clf; figure(1);

% INPUTS:
b=20;
s=0;
dim=2;
q=10; 
p=5 ;

a=sin(pi()/6)/sin((pi()/6)+pi()/16);
phi=pi()/16;

n0=[1,0];
n1=[a*cos(phi),a*sin(phi)];
n2=[a*cos(phi),-a*sin(phi)];
n3=[(a^2)*cos(2*phi),(a^2)*sin(2*phi)];
n4=[(a^2),0];
n5=[(a^2)*cos(2*phi),-(a^2)*sin(2*phi)];
n6=[(a^3)*cos(3*phi),(a^3)*sin(3*phi)];
n7=[(a^3)*cos(phi),(a^3)*sin(phi)];
n8=[(a^3)*cos(phi),-(a^3)*sin(phi)];
n9=[(a^3)*cos(3*phi),-(a^3)*sin(3*phi)];
n10=[(a^4)*cos(4*phi),(a^4)*sin(4*phi)];
n11=[(a^4)*cos(2*phi),(a^4)*sin(2*phi)];
n12=[(a^4),0];
n13=[(a^4)*cos(2*phi),-(a^4)*sin(2*phi)];
n14=[(a^4)*cos(4*phi),-(a^4)*sin(4*phi)];
N=[n0; n1; n2; n3; n4; n5; n6; n7; n8; n9; n10; n11; n12; n13; n14];

CM=[conma(1,0,15);conma(2,0,15);conma(3,1,15);conma(4,1,15);conma(4,2,15);conma(5,2,15);conma(6,3,15)
    conma(7,3,15);conma(7,4,15);conma(8,4,15);conma(8,5,15);conma(9,5,15);conma(10,6,15);conma(11,6,15)
    conma(11,7,15);conma(12,7,15);conma(12,8,15);conma(13,8,15);conma(13,9,15);conma(14,9,15);]

Q=N(1:10,:)';
P=N(11:15,:)';

C=CM;  
U=zeros(2,q); 
U(:,1)=[20;0];
U(:,2)=[0;-10];
U(:,3)=[0;-30];
U(:,4)=[0;20];
U(:,5)=[0;-5];
U(:,6)=[0;10];
U(:,7)=[0;10];
U(:,8)=[0;10];
U(:,9)=[0;10];
U(:,10)=[0;10];

[c_bars,t_strings,V]=tensegrity_statics(b,s,q,p,dim,Q,P,C,U);
tensegrity_plot(Q,P,C,b,s,U,V,true,2.0); grid on;




