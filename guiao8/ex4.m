%% alinea a

% p = 0.4  q = 0.6
p = 0.4;
q = 0.6;

disp('a) ')
T=[
    [ p^2 , 0 , 0 , q^2 ]; %a
    [(1-p)^2 , 0 , 0 , q*(1-q) ]; %b
    [ p*(1-p) , 0 , 0 , q*(1-q) ]; %c
    [ p*(1-p) , 1 , 1 , (1-q)^2 ] %d
   ]

%% alinea b

disp('b)');
init=[1;0;0;0];
aux=T^10*init;
disp(aux);
