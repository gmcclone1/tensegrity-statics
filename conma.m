%connectivity matrix builder
function C=conma(i, o, size) 

C=zeros(1,size);
C(1,i + 1)=-1;
C(1,o + 1)=1;
return
