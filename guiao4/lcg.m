function [ L ]=lcg(X0,a,c,m, N)
L=zeros(1,N);
L(1)=X0;
for i=2:N
L(i) = rem(a*L(i-1)+c, m);
end
end
