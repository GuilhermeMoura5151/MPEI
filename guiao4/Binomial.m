function [y] = Binomial(n, p, N)

nBernoulli=(rand(n,N)<=p);
    y=sum(nBernoulli);

end