function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    
%

% For every example in dataset X
for i = 1:size(X, 1)
    % Extract training example i as a row vector
    x = X(i, :);
    % Map each dimension via each eiganvector, assign it to its
    % corresponding Z-matrix ID
    Z(i, :) = x * U(:, 1:K);
end

% NOTE: Recommended assignment of x involves transposing X(i) to a column
%       vector, simply to transpose it back to a row, so the process has 
%       been optimized by removing this "double negative" operation.

% =============================================================

end
