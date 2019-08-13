% Segunda Versão

%% 1.
gerechave2();

%% 2.
N = 1000;
fc = 0.8;
Nmax = floor(N / fc);
L = zeros(1, Nmax);
figure
for i = 1:N
    index = randi([1 Nmax]);
    L(1, index) =L(1, index) + 1;
    subplot(2,2,1); plot(L);
    subplot(2,2,2); hist(L,0:6);
    drawnow;
end

k = zeros(1, 7);
med = 0;
var = 0;
for i=0:6
   k(1, i + 1) = sum( L == i);
   med = med + (i * k(1, i + 1)) / Nmax;
   var = var + i^2 * k(1, i + 1) / Nmax; 
end
subplot(2,2,3:4); plot(k);
fprintf('Média: %.2f   Var: %.2f\n',med,var - med^2);
