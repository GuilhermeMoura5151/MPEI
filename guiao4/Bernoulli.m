function [ suc ] = Bernoulli( p,N)
    L=rand(1,N)
    suc=(L<=p);
   
end

