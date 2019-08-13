%% alinea a

H=[
  [ 0.8 , 0.0 , 0.3 , 0 ];
  [ 0.2 , 0.9 , 0.2 , 0 ];
  [ 0.0 , 0.1 , 0.4 , 0 ];
  [ 0.0 , 0.0 , 0.1 , 1 ]
  ];

%% alinea b

disp('b)');
init=[1;0;0;0];
aux=H^1000*init;
disp(aux(2));

%% alinea c

disp('c)');
H1=H^1
H2=H^2
H10=H^10
H100=H^100

%% alinea d

disp('d)');
Q=H(1:3,1:3);
disp(Q);

%% alinea e

disp('e)');
F=inv(eye(3)-Q);
disp(F);

%% aliena f

disp('f)');
disp(sum(F));

%% alinea g

disp('g)');
disp(sum(F))