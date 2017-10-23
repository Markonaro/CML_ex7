function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% For every point in dataset X
for xi = 1:length(idx)
    
    % Initialize a vector to store the distance between xi & each centroid
    dist = zeros(K, 1);
    for k = 1:K
        % Store the distance between X(i) and centroids(k) in dist(k)
        dist(k) = sum((X(xi,:)-centroids(k,:)).^2);
    end
    
    % Ignoring the actual distance, extract the index of the minimum dist.
    [value, index] = min(dist);
    
    % Assign the index of closest centroid to idx(xi)
    idx(xi) = index;
end


% =============================================================

end

