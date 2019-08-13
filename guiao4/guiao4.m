%% Ex1 a

 y=lcg(3,3,3,5,1000)
unique(y)
hist(y)
%4

%% Ex1 b

%gere um conjunto de numeros aleatorios entre 0 e 1 com base nos numeros
%gerados na alinea A. Visualize o histograma e conte novamente os numeros
%diferentes

m=5;
b=y/m; 
hist(b)
unique(b)
%4

%% Ex2 a

p=0.5;
L=rand(1,10);
sucessos=(L<=p);
sucessos

%% Ex2 b

Y=floor(rand(1,15)*6)+1

%% Ex2 c

L=-4+14*rand(1,20)

%% Ex 3

hist(Bernoulli(.3,10000),(0:1)')

%% Ex 4

n=150;
p=0.3;

figure
subplot(1,2,1);
hist(Binomial(n, p, 500));
title('Ex4, experimental: ');

subplot(1,2,2);
y = zeros(1, n+1);
for i=1:n+1
    %i-1 = quantidade de sucessos
    c = factorial(n)/(factorial(i-1)*factorial(n-(i-1)));
    y(i) = c * p^(i-1) * (1-p)^(n-(i-1));
end
hist(y);
title('Ex4, teórico: ');

%% Ex 5


