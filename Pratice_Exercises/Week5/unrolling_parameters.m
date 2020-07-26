Theta1 = ones(10, 11);
Theta2 = 2 * ones(10, 11);
Theta3 = 3 * ones(1, 11);

% unrolling parameters into a single vector
thetavec = [Theta1(:); Theta2(:); Theta3(:)];
disp(size(thetavec));

% back to original matrices
reshape(thetavec(1: 110), 10, 11)
reshape(thetavec(111: 220), 10, 11)
reshape(thetavec(221: 231), 1, 11)