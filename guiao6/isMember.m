function o=isMember(B, e, k)
n=length(B);
o=0;

    for i=1:k
        e=[e num2str(i)];
        hashcode=string2hash(e);
        hashcode=mod(hashcode, n)+1;
        o=o+B(hashcode);
    end
    
    o = (o==k);

end