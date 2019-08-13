%% Ex1
%   funçoes
% 	F=init()
% 	insert(F)
% 	isMember(F) ---- boolean

B=init(100)
stem(B)
B=insert(B,'a',1)

%% Ex 2

n=100;
k=3;

membros= {'Portugal','Espanha','Franca'};

F=init(n);

for i=1 : length(membros)
   
    F=insert(F, membros{i}, k)
    
end

isMember(F,'Portugal',3)

%% Ex 3 a)

B=init(8000);
alpha = ['A':'Z' 'a':'z' 0:9];
ficheiros={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(ficheiros,alpha);
prob=cumsum(pmfPT);
for k=1:1000
    B=insert(B, gerarstring(prob,alpha,40),3);
end

%% Ex 3 b)

res=0;
for k=1:10000
    res=res+isMember(B, gerarstring(prob,alpha,40),3);
end
res

%% Ex 4

res4=zeros(1,15);
alpha = ['A':'Z' 'a':'z'];
ficheiros={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(ficheiros,alpha);
probs=cumsum(pmfPT);

for i=1:15
    disp(i)
    filtro=init(8000);
    for k=1:1000
        filtro=insert(filtro, gerarstring(probs,alpha,40),i);
    end
    x=0;
    for k=1:10000
        x=x+isMember(filtro, gerarstring(probs,alpha,40),i);
    end
    res4(i)=x;
end
stem(res4)

%% Ex 5

res=0;
filtro=init(8000000);

fid=fopen('livro1.txt');
while 1
    linha=fgetl(fid);
    if ~ischar(linha), break, end

    if length(linha)>0
        linha=[linha sprintf('\n')];
        [palavras1,matches] = strsplit(linha,{' ',',','…','.','...'},'CollapseDelimiters',true);
        for k=1:length(palavras1)
            filtro=i(filtro, palavras1{k},3);
        end
    end

end
fclose(fid);


fid2=fopen('livro2.txt');
while 1
    linha2=fgetl(fid2);
    if ~ischar(linha2), break, end

    if length(linha2)>0
        linha2=[linha2 sprintf('\n')];
        [palavras2,matches] = strsplit(linha2,{' ',',','…','.','...'},'CollapseDelimiters',true);
        for k=1:length(palavras2)
            if isMember(filtro, palavras2{k},3)
            res=res+0;
           else
            res=res+1;
            end
        end
    end

end
fclose(fid2);


disp(res);


