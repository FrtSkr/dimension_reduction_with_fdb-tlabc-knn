function [loss_rate] = Calculate_Loss_Rate(sinif, y_test)
success= 0;
[y_len, ~]= size(y_test);
typ = class(y_test(1));

if(typ == "cell")
    for i=1: y_len
       y= y_test(i);
        if(strcmp(sinif(i).sinif{1}, y{1}))
         success = success + 1;      
        end
    end
    loss_rate = 1 - (success / y_len);

else
    for i=1: y_len
        if(y_test(i) == sinif(i).sinif)
         success = success + 1;      
        end
    end

    loss_rate = 1 - (success / y_len);
end
end

