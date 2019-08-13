function [SimilarUsers] = SimUsers(J,users,threshold)
Nu=length(J);

% Com base na dist�ancia, determina pares com
% Array para guardar pares similares (user1, user2, dist�ancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu-1,
    for n2= n1+1:Nu,
        if J(n1,n2)<threshold
            SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)];
            k= k+1;
        end
    end
end