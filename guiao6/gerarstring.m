function result=gerarstring(prob,alpha,comprimento) 
    result='';
    
    for i=1:comprimento
        index=rand();
        
        for k=1:length(prob)
           if index <= prob(k) 
               result=strcat(result,alpha(k));
               break;
           end
        end
        
    end
    
end
