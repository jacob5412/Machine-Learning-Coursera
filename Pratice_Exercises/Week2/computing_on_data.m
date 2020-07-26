A = [1 2; 3 4; 5 6];
B = [2 1; 4 3; 7 8];
C = [1 1; 2 2];

A * C
A .* B
A .^ 2

v = [1; 2; 3];
1 ./ v
log(v)
exp(v)
abs(v)
-v % -1 * v
v + ones(length(v), 1)
v + 1

A'
(A')'

a = [1 15 2 0.5];
val = max(a);
[val, ind] = max(a);
val
ind
a < 3 % element wise comparison
find(a < 3) % returns indices

A = magic(3) % 3x3 magic matrix
max(A) % max of a matrix is the column wise maximum
[r, c] = find(A >= 7);
[r, c]

sum(a)
prod(a)
floor(a)
ceil(a)
rand(3) % 3x3 matrix of random numbers
max(rand(3), rand(3)) % element wise maximum 
max(A, [], 1) % column wise maximum
max(A, [], 2) % row wise maximum
max(max(A))
max(A(:))

A = magic(9);
sum(A, 1) % per column sum
sum(A, 2) % per row sum
sum(sum(A .* eye(9)))
sum(sum(A .* flipud(eye(9))))

A = magic(3);
temp = pinv(A);
temp * A