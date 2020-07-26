% set options for fminunc
options = optimoptions(@fminunc, 'Algorithm', 'Quasi-Newton', 'GradObj',...
    'on','MaxIter',400);

% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

% Print theta
fprintf('Cost at theta found by fminunc: %f\n', cost); 
disp('theta:');disp(theta);

% Plot boundary
plotDecisionBoundary(theta, X, y);

% Add some labels
hold on;
% Labels and Legend
xlabel('Microchip Test 1') 
ylabel('Microchip Test 2')
% Specified in plot order 
legend('y = 1', 'y = 0', 'Decision boundary')
hold off;

% Compute accuracy on our training set
p = predict(theta, X);
fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);