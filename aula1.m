%% Codigo 1

p = 0.5;
k = 2;
n = 3;
prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%% Codigo 2

x= rand(3,10000);

%lancamentos cara
lancamentos= x>0.5;

%numero de caras de cada experiencia
resultados=sum(lancamentos);

%se deu 2 caras
sucessos= resultados==2;

%resultado final dividindo o n´umero de experiˆencias com 2 caras pelo numero total de experiencias
probSimulacao1= sum(sucessos)/10000

%% Codigo 2 V2

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 2; %numero de caras
n = 3; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao2= sum(sucessos)/N

%% Ex 2

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 6; %numero de caras
n = 15; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
resultado2= sum(sucessos)/N

%% Ex 3

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 6; %numero de caras
n = 15; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)>=k;
resultado3= sum(sucessos)/N

%% Ex 4

for k=0:20
    
resultados4a(k+1)=probS(0.5,k,6,1000);

end

%stem(resultados4a);

%% Ex 5


N= 1e5; %numero de experiencias
p = 0.3; %probabilidade de cara
k = 2; %numero de caras
n = 5; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)<=k;
resultado5= sum(sucessos)/N

for k=0:5
    
aux(k+1)=probS(0.3,k,5,1000);

end

hist(aux)

