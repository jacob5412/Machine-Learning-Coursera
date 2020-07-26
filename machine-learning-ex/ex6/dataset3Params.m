function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
C_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
errors = zeros(numel(C_vec)*numel(sigma_vec),3);
errorRow = 0;

for i = 1:numel(C_vec)
    for j = 1:numel(sigma_vec)
        errorRow = errorRow + 1;
        model = svmTrain(X, y, C_vec(i),...
            @(x1, x2) gaussianKernel(x1, x2, sigma_vec(j)));
        predictions = svmPredict(model, Xval);
        prediction_error = mean(double(predictions ~= yval));

        errors(errorRow,:) = [C_vec(i), sigma_vec(j), prediction_error];   
    end
end

sorted_results = sortrows(errors, 3); % sort matrix by column #3, the error, ascending

C = sorted_results(1,1); % get best C from column #1
sigma = sorted_results(1,2); % get best sigma from columns #2

% =========================================================================

end
