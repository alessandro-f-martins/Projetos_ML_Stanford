function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
% temp_theta = theta;
% alpha_over_m = alpha/m;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    
  theta = theta - (alpha/m)*(((X*theta)-y)' *X)';

%  temp_theta = theta;

%  for iter_m = 1:m
%    temp_sum = ((theta'*X(iter_m,:)') - y(iter_m));
%    for iter_theta = 1:length(theta)
%      temp_theta(iter_theta) = temp_theta(iter_theta) + temp_sum*X(iter_m,iter_theta);
%    end

%  end

%  theta = temp_theta - alpha_over_m*temp_theta;
  
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
