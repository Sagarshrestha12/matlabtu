% SOLVE Ax =B USING GAUSS ELIMINATION WITH PARTIAL PIVOTING

A=[1,1,1;2,1,3;3,4,-2];
B=[4;7;9];
% GET AUGMENTED MATRIX
AB=[A,B];
n=length(A);
L=eye(n);
%% A(I,I) AS PIVOT ELEMENT
%row exchange to ensure A(1,1) is largest in column-1
clo1=AB(:;1);
for i=2:3
    alpha=A(i,1)/A(1,1);
%R2=R2-alpha*R1;. Getting the row 2;
    AB(i,:)=AB(i,:)-alpha*AB(1,:);
    L(i,1)=alpha;
end

%% A (2,2) AS PIVOT ELEMENT
i=3;
alpha=AB(i,2)/AB(2,2);
AB(i,:)=AB(i,:)-alpha*AB(2,:);
L(i,2)=alpha;


%% Back-substitution
%x=zeros(3,1);
%for i=3:-1:1
 %   x(i)=(AB(i,end)-AB(i,i+1:n)*x(i+1:n))/AB(i,i);
%end

%%
U=AB(1:n,1:n);