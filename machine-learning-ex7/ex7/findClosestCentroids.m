function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
x_num_lin = size(X,1);
idx = zeros(x_num_lin, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

smaller_norm = 0;
current_norm = 0;

  for iter_lin_x = 1:x_num_lin
    smaller_norm = 0;
    for iter_k = 1:K
      current_norm = norm(X(iter_lin_x,:) - centroids(iter_k,:));
      if (iter_k == 1 || current_norm < smaller_norm) 
        idx(iter_lin_x) = iter_k;
        smaller_norm = current_norm;
      end      
    end
  end


% =============================================================

end

