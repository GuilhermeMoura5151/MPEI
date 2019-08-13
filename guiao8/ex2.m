%% alinea a

T=[
    [ 1/3 , 1/4 , 0 ];
    [ 1/3 , 0.55 , 1/2 ];
    [ 1/3 , 1/5 , 1/2 ]
  ]

disp('A soma de cada coluna deverá ser 1:')
sumCol=sum(T);
disp(sumCol);

disp('zero negativos:')
neg=sum(sum(T<0));
disp(neg);

%% alinea b

disp('b) [60 ; 15 ; 15 ]')

%% alinea c

init=[ 60 ; 15 ; 15 ];

disp('c):')
aux=T^29*init;
disp(aux);

%% alinea d

disp('d): ')
init=[ 30 ; 30 ; 30 ];
aux=T^29*init;
disp(aux);