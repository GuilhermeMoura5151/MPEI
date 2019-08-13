% %%Ex1a
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 1; %numero rapazes
% n = 2; %numero de filhos
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos)>=k;
% resultadoA= sum(sucessos)/N
% 
% %%Ex1b
% 
% resultadoTb=3/4
% 
% %%Ex1c
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 1; %numero rapazes
% n = 1; %numero de filhos
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos);
% resultadoC= sum(sucessos)/N
% 
% %%Ex1d
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 1; %numero rapazes
% n = 1; %numero de filhos
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos);
% resultadoC= sum(sucessos)/N
% 
% %%Ex1e
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 1; %numero rapazes
% n = 5; %numero de filhos
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos)==(k+1);
% cond= sum(filhos)>=k;
% resultadoE= sum(sucessos)/sum(cond)
% 
% %%Ex1f
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 1; %numero rapazes
% n = 5; %numero de filhos
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos)>=(k+1);
% cond= sum(filhos)>=k;
% resultadoF= sum(sucessos)/sum(cond)
% 
% %%Ex2a
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 10; %numero caras
% n = 10; %numero de caras
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos)==k;
% resultado2a= sum(sucessos)/N
% 
% %%Ex2b
% 
% N= 1e5; %numero de experiencias
% p = 0.5; %probabilidade rapaz
% 
% k = 10; %numero caras
% n = 11; %numero de caras
% 
% filhos = rand(n,N) > p;
% sucessos= sum(filhos)==(k+1);
% cond= sum(filhos)>=k;
% resultado2b= sum(sucessos)/sum(cond)
% 
% 
% %%Ex3
% 
% p = 0.9; %probabilidade cancro da mama
% 
% n = 1/10000; %numero de mulheres
% 
% mC=p*n+(1-p)*(1-n);
% resultado3=p*n/mC
% 
% %%Ex4A
% 
 n=1e5;
% 
 lancamentos=ceil(100*rand(20,n));
 diferentes=zeros(1,n);
 for i=1:n
     diferentes(i)=length(unique(lancamentos(:,i)))==20;
 end
 resultado4A=sum(diferentes)/n
 
% %%Ex4B
% 
% n=1e5;
% 
% lancamentos=ceil(100*rand(20,n));
% diferentes=zeros(1,n);
% for i=1:n
%     diferentes(i)=length(unique(lancamentos(:,i)))==20;
% end
% resultado4B=1-sum(diferentes)/n
% 
% %%Ex4C
% 
% N=100000;
% m=[1000 10000 100000 1000000];
% n=1:10:100;
% for i= 1:length(m)
%     x=m(i);
%     subplot(1,4,i)
%     res=zeros(1,length(n));
%     for j=1:length(n)
%         u=n(j);
%         lancamentos=ceil(x*rand(u,N));
%         diferentes=zeros(1,N);
%         for i=1:N
%             diferentes(i)=length(unique(lancamentos(:,i)))<u;
%         end
%         res(j)=sum(diferentes)/N;
%     end
%     plot(n,res);
%     title(m(i));
% end
% 
% %%Ex6A
% 
% for n = 1:30
%     N = 1e5;
%     lancamentos = round(rand(n,N) * 365);
% 
%     res = zeros(1,N);
%     for x = 1:N
%         res(1,x)=(length(unique(lancamentos(:,x)))<n);
%     end
%     if (sum(res)/N) > 0.5
%         disp(sprintf('Numero de Pessoas (0.5): %f', n ));
%         break
%     end
% end
% 
% %%Ex6B
% 
% for n = 1:30
%     N = 1e5;
%     lancamentos = round(rand(n,N) * 365);
% 
%     res = zeros(1,N);
%     for x = 1:N
%         res(1,x)=(length(unique(lancamentos(:,x)))<n);
%     end
%     if (sum(res)/N) > 0.9
%         disp(sprintf('Numero de Pessoas (0.9): %f', n ));
%         break
%     end
% end
% 
% %%Ex7
% 
% %a)   i)NAO ---- ii)NAO
% %b)    NAO

%%Ex8A

n=1e5;
palavras=round(rand(2,n) * 2 +1);
seq=0;

for i=1:n
    if palavras(1,i)==1 && palavras(2,i)==2
        seq=seq+1;
    end
end
resultado8A=seq/n

%%Ex8B

n=1e5;
palavras=round(rand(2,n) * 2 +1);
seq=0;

for i=1:n
    if palavras(1,i)==1 || palavras(2,i)==1
        seq=seq+1;
    end
end
resultado8B=seq/n

%%Ex8C

n=1e5;
palavras=round(rand(2,n) * 2 +1);
seq=0;

for i=1:n
    if palavras(1,i)~=3 || palavras(2,i)~=3
        seq=seq+1;
    end
end
resultado8C=seq/n

%%Ex8D

n=1e5;
palavras=round(rand(2,n) * 2 +1);
inclui1=0;
inclui2=0;
for i=1:n
    if palavras(1,i)==2 || palavras(2,i)==2
        inclui2=inclui2+1;
        if palavras(1,i)==1 || palavras(2,i)==1
        inclui1=inclui1+1;
    end
    end
end
resultado8D=inclui1/inclui2

%%Ex8E

pp=10; %Palavras possiveis
sp=5; %Sequencias de palavras
n=1e5; %Numero de experiências

disp(sprintf('Calculado Ex8E: %f \n',funcEx8(pp,sp,n)));