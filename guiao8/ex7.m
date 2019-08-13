% exercicio de exame!!

% matriz
T=[
    [ 0.8 , 0.1 , 0.05 ];
    [ 0.2 , 0.6 , 0.20 ];
    [ 0.0 , 0.3 , 0.75 ]
  ]

init=[100;200;30];

%% alinea a

disp('a)');
aux=T^109*init;
disp(aux);

%% alinea b
disp('b)');
aux=T^365*init;
disp(aux);

%% aliena c

k=0;
for i=1:365
    k=i;
    aux=T^i*init;
    if aux(3)>130
        break;
    end
end
disp('c)');
k