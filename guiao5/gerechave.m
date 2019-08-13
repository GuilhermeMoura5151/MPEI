function result=gerechave(min,max) 
    result = '';

    alpha = ['A':'Z' 'a':'z' ];
    comp = floor(rand() * (max-min+1) + min);  
    
    for i = 1:comp
        index = floor(rand() * length(alpha) + 1);
        result = strcat(result, alpha(index));
    end
end