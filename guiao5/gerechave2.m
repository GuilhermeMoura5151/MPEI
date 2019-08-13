function result = gerechave2(min, max)
    alpha = ['A':'Z' 'a':'z' ];
    ficheiros = {'pg21209.txt','pg26017.txt'};
    pmfPT = pmfLetrasPT(ficheiros, alpha);

    comp = floor(rand() * (max-min + 1) + min); % comprimento
    result = '';
    for i = 1:comp
        max = 0;
        index = rand();
        for k = 0:length(pmfPT)
            max = max + pmfPT(k);
            if index <= max
                result = strcat(result, alpha(k))
                break;
            end
        end
            
     end
        res = strcat(result, alpha(index));
end