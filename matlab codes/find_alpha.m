% MATLAB Code to Determine Alpha by Successive Approximation

% Given parameters (example values, modify as per your design)
f_l=20;
f_h=300;
f_m=sqrt(f_l*f_h);
B=f_h-f_l;
Q=f_m/B;
DeltaOmega = 1/Q;    % Normalized bandwidth
a1 = 0.7654;            % Coefficient a1 of the 2nd order butterworth
b1 = 1;            % Coefficient b1 of the 2nd order butterworth

fprintf("Mid frequency %.6f\n",f_m);
fprintf("Quality factor %.6f\n",Q);

% Initial guess and parameters for iteration
alpha = 3.813;           % Initial guess for alpha
tolerance = 1e-4;    % Convergence tolerance
maxIter = 100;      % Maximum number of iterations
iter = 0;            % Iteration counter

% Successive Approximation Loop
while iter < maxIter
    % Calculate the left-hand side of the equation
    term1 = alpha^2;
    term2 = ((alpha * DeltaOmega * a1) / (b1 * (1 + alpha^2)))^2;
    term3 = 1 / alpha^2;
    term4 = (DeltaOmega)^2/b1;
    
    % Equation to solve
    equation = term1 + term2 + term3 -2 - term4;
    
    % Break if the equation converges (close to 0)
    if abs(equation) < tolerance
        break;
    end
    
    % Update alpha using a small step (e.g., gradient-like adjustment)
    % Adjust the step size if needed for faster convergence
    alpha = alpha + 0.0001 ; 
    
    % Ensure alpha remains positive
    if alpha <= 0
        error('Alpha became negative. Adjust initial guess or parameters.');
    end
    
    % Increment iteration counter
    iter = iter + 1;
    disp(alpha)
    disp(equation)
end

% Output Results
if iter == maxIter
    disp('Failed to converge within maximum iterations.');
else
    fprintf('Converged alpha: %.6f\n', alpha);
    fprintf('Number of iterations: %d\n', iter);
end
