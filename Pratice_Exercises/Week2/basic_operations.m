a = pi;
disp(sprintf('2 decimals: %0.2f', a));
fprintf('6 decimals: %0.6f', a);
format long
a
format short
a
A = [1 2; 3 4; 5 6]
v = [1 2 3]
v = [1; 2; 3]
v = 1:0.1:2 % create a row vector start with 1, increment by 0.1, until 2
v = 1:6
ones(2, 3) % matrix of ones (2, 3)
C = 2*ones(2, 3)
w = zeros(1, 3)
w = rand(1, 3) % row vector of normal random variables between 0 and 1
% row vector of random variables drawn from gaussian distribution
w = randn(1, 3)
w = -6 + sqrt(10) * (randn(1,10000));
hist(w)
hist(w, 50) % histogram with 50 buckets
eye(4) % identity matrix