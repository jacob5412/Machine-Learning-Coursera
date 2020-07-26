A = [1 2; 3 4; 5 6];
size(A)
size(A, 1) % first dimension of size
v = [1 2 3 4];
size(v)
size(A) % prints out longer dimension since matrix
pwd
load '/Users/jacob1.ext/Codes/Machine-Learning-Coursera/machine-learning-ex/ex1/ex1data1.txt'
save ex1data1.mat ex1data1 % save as a matlab file in current directory
ex1data1
who % variables in workspace
size(ex1data1)
clear ex1data1
whos % detailed view
clear
load ex1data1.mat
save ex1data1.txt ex1data1 -ascii % save as text (ASCII)
A = [1 2; 3 4; 5 6];
A([1 3],:) % get everything in A whose first index is 1 or 3
A(:,2) = [10; 11; 12]
A = [A, [100; 101; 102]] % append another column vector to the right
A(:) % put all elements of A in single column vector
A = [1 2; 3 4; 5 6]
B = [7 8; 9 10; 11 12]
[A B]
[A; B]