%% aliena a

T=[
    [ 0.7 , 0.2 , 0.3 ];
    [ 0.2 , 0.3 , 0.3 ];
    [ 0.1 , 0.5 , 0.4 ]
  ];
 
%% alinea b

disp('b)');
init=[1;0;0];
aux=T^2*init;
disp(aux(3))

%% alinea c

disp('c)');
result=zeros(20,3);
for i=1:20
    aux=T^i*init;
    result(i,:)=aux;
end
plot(result)

%% alena d

disp('d)');
result=zeros(20,3);
k=0;
for i=1:20
    aux=T^i*init;
    result(i,:)=aux;
    k=i;
    if(k>1)
        if(max(abs(result(i,:)-result(i-1,:)))<10^-4)
            break;
        end
    end
end
plot(result)
axis([0 k 0 1]);