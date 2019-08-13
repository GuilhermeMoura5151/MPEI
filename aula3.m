%Guiao 3

%% Ex1
%a
y=ones(1,6)/6;
x=1:6

stem(x,y)
axis([0 7 0 1/5]);

%b
%x=[1 2 3 4 5 6];
x=1:6;

px=ones(size(x))/6;

stem(x,px);
Fx=cumsum(px)
stairs(x,Fx)


%% Ex2

y=[90/100 9/100 1/100];
x=[5 50 100];

y2=[0 y 0];
x2=[0 x x(length(x))+10];

Fx=cumsum(y2);

subplot(2,1,1);
stem(x,y)
axis([0 110 0 1]);
subplot(2,1,2);
stairs(x2,Fx)
axis([0 115 0.8 1.1]);

%% Ex3

% Simulaçao
% 
% n=4
% n=1000
% x=rand(n,N)<0.5
% 
% n_caras=sum(x);
% px(0)=sum(n_caras==0)/NN;
% 
% md_x=mPan(n_caras)
% var_x=var(n_caras)
% 
% analiticamente
% x=0:4;
% px=[1/16 4/16 6/16 4/16 1/16];
% 
% Ex = sum(x.*px)
% Ex2 = sum(x.12.*px)
% varx=Ex2-Ex^2

%% Ex4

n = 5; 
p = 3/10;

for n=0:5
    pX(n+1) = factorial(n) / (factorial(n-n) * factorial(n)) * p.^n * (1-p).^(n-n)
end

stem(0:5 , pX)
axis([-0.5 5.5 0 0.5])

%% Ex5

n=70
test=logspace(-3,log10(0.5),n)
pcai2=test.^2   %blue
pcai4=4*test.^3.*(1-test)+test.^4   %red
figure

loglog(test,pcai2,test,pcai4)
legend('2 motores','4 motores','Local','Oeste')

%% Ex6

p=1/1000;
d=7;
a=8000;
comb=prod(a-d+1:a)/factorial(d);
distcorreta=comb*p^d*(1-p)^(a-d)

alpha=a*p;
poisson=alpha^d*exp(-alpha)/factorial(d)

%% Ex 7a

d=0;
alpha=15;
poisson7a=alpha^d*exp(-alpha)/factorial(d)

%% Ex 7b

alpha=15;
poisson7b=0;
for d=0:10
    poisson7b=poisson7b+(alpha^d*exp(-alpha)/factorial(d));
end
poisson7b=1-poisson7b


%% Ex 8

p8=0;
y=zeros(1,4);
for x=1:4
    y(x)=(x+5)/30;
end
p8=sum(y);
if(p8==1)
    disp('8) Sim');
else
    disp('8) Não')
end

%% Ex 9

lambda=1;
d=0;

poisson9=(lambda^d*exp(-lambda)/factorial(d));
poisson9=1-poisson9

%% Ex 10

n=1e6;
f=rand(1,n)*10;

fA=f<3
probA=sum(fa)/n

fB=f>7;
probB=sum(fB)/n

fC1=f>1; fC2=f<6
probC=sum(fc1&fc2)/n


%% Ex 11

n=1e6;
f=randn(1,n)*2+14; %2 desvio padrao 14 media

fA=f>12; fA2=f<16;
pA=sum(fA&fA2)/n

fB=f>10; fB2=f<18;
pB=sum(fB&fB2)/n

fC=f>=10;
pC=sum(fC)/n


