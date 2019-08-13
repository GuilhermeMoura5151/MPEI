%Faltar: Estado 1
%Nao Faltar: Estado 2

% T= [
%     0.7 0.8
%     0.3 0.2
% ]
% 
% x(2)= Tx(1)
%     = T(Tx(0))
%     = T2x(0)
%     
% x2= T^2x[1] = [0.73]  --- x2(1)
%         [0]   [0.27]

T=[
       [ 0.2 , 0.3 ];
       [ 0.8 , 0.7 ]
    ];



%% alinea a

disp('a)')
init=[0;1];
aux = T^2*init;
disp(aux(2));

%% alinea b

disp('b)')
init=[1;0];
aux = T^2*init;
disp(aux(2));

%% alinea c

disp('c)')
init=[0;1];
aux = T^30*init;
disp(aux(2));

%% alinea d

disp('d)')
init=[0.15;0.85];
result=zeros(1,30);
for i=0:29
    aux = T^i*init;
    result(i+1)=aux(1);
end
plot(result);