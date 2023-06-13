function [ecosize, n, maxFE, lb, ub] = problem_terminate(dataset_name)

 if(dataset_name == "user_knowledge")
    
    % ecosystem (population) size
    ecosize = 258;

    % problem dimension
    n = 5;

    % number of function evaluations
    maxFE = 30 * n;

    % problem lower band 
    lowerBand = 0;
    lb = ones(1, n) * lowerBand;

    % problem upper band
    upperBand = 1;
    ub = ones(1, n) * upperBand;
 end

  if(dataset_name == "z-alizadeh")
    
    % ecosystem (population) size
    ecosize = 244;

    % problem dimension
    n = 57;

    % number of function evaluations
    maxFE = 30 * n;

    % problem lower band 
    lowerBand = 0;
    lb = ones(1, n) * lowerBand;

    % problem upper band
    upperBand = 1;
    ub = ones(1, n) * upperBand;
 end

end

