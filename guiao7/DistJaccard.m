function [J] = DistJaccard(Set)
Nu=length(Set);

% Calcula a distˆancia de Jaccard entre todos os pares pela definic¸˜ao.
J=zeros(Nu); % array para guardar distˆancias
h=waitbar(0,'Calculating');

for n1= 1:Nu-1,
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu,
        Intersect = length(intersect( Set{n1}, Set{n2}  ));
        Union = length(Set{n1})+length(Set{n2})-Intersect;
        J(n1,n2)=1-(Intersect / Union);
    end
end
delete (h)