function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%



c = ones(m,1);
X = [c,X]; % X becomes 5000 * 401 dimensional matrix
z2 = Theta1 * X'; %5000 * 25


a2 = 1./(1+e.^-(z2));
d = [c, a2']; %5000*26

z3 = Theta2 * d'; %10 * 5000 dimensional matrix
a3 = 1./(1+e.^-(z3')); %z3 = 5000 *10 dimensional matrix

[p_max, p] = max(a3, [], 2);




% =========================================================================


end
