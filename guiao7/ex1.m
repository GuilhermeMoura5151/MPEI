% C�odigo base para gui�ao PL07 MPEI 2017-2018
udata=load('u.data.txt'); % Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % N�umero de utilizadores

% Constr�oi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa c�elulas

for n = 1:Nu, % Para cada utilizador
    % Obt�em os filmes de cada um
    ind = find(u(:,1) == users(n));
    % E guarda num array. Usa c�elulas porque utilizador tem um n�umero
    % diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end

%% Calcula a dist�ancia de Jaccard entre todos os pares pela definic��ao.
J=zeros(Nu); % array para guardar dist�ancias
h= waitbar(0,'Calculating');

for n1= 1:Nu,
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu,
        %% Adicionar c�odigo aqui
        i= length(intersect(Set{n1},Set{n2}));
        d= i/(length(Set{n1})+length(Set{n2})-i);
        d=1-d;
        J(n1,n2)=d;
    end
end
delete (h)

%% Com base na dist�ancia, determina pares com
%% dist�ancia inferior a um limiar pr�e-definido
threshold =0.4 % limiar de decis�ao

% Array para guardar pares similares (user1, user2, dist�ancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu,
    for n2= n1+1:Nu,
        if J(n1,n2) < threshold
            SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)]
            k= k+1;
        end
    end
end