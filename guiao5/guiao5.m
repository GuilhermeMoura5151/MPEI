% Primeira versão

%% 1.
gerechave(3, 20)

%% 2.
string2hash('test')

%% 3.
N = 1000;
fcarga = 0.8;
nmax = floor(N / fcarga);
L = zeros(1, nmax);
figure
for i =1:N
    index = randi([1 nmax]);
    L(1, index) = L(1, index) + 1;
    subplot(2,2,1); 
    plot(L);
    subplot(2,2,2); 
    hist(L,0:6);
    drawnow;
end

%% 4.

k = zeros(1, 7);
med = 0;
var = 0;
for i = 0:6
   k(1, i + 1) = sum(L == i);
   med = med + (i * k(1, i + 1)) / nmax;
   var = var + i^2 * k(1, i + 1) / nmax; 
end
subplot(2,2,3:4); 
plot(k);
fprintf('Média: %.2f   Variancia: %.2f\n', med ,var - med ^ 2);