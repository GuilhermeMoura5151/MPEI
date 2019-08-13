function Y=dado(n)
if nargin==0
n=1;
end
Y=floor(rand(1,n)*6)+1;