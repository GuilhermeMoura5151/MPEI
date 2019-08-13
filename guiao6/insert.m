function B=insert(B, e, k)
n=length(B);

    for i=1:k
        
        e=[e num2str(i)];        % Aveiro - Aveiro1 - Aveiro12 - Aveiro123
        
        hashcode=string2hash(e);
        hashcode=mod(hashcode, n)+1;
        
        B(hashcode)=1;
        
    end
end