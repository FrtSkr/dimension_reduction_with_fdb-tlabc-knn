function [attributes_index] = Dimension_Reduction(W)

threshold = 0.5; % veya mean(W)
w_len= length(W);

fprintf("Threshold: %.4f\n", threshold);
counter= 0;

    for i=1: w_len
        if(threshold < W(i))
            counter = counter + 1; 
            attributes_index(counter)=i;
        end
    end
end