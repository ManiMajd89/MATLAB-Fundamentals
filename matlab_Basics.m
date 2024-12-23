% MATLAB Basics: A Summary of Fundamental Commands
% Author: Mani Majd
% Source: MATLAB and Simulink Tutorials
% Date: November 2024
% Description:
%   This script provides a concise summary of basic MATLAB commands. It is 
%   intended as an introduction for beginners and as a reference for key 
%   operations in MATLAB.

%% Section 1: Arrays and Matrices
% Row vector, column vector, and matrix
x = [3 9];
y = [3; 9];
z = [1 2 3; 4 5 6; 7 8 9];

% Creating evenly spaced vectors
y = 1:10; % Default spacing of 1
x = 20:2:26; % Custom spacing
s = linspace(1, 10, 3); % linspace(first, last, number_of_elements)

% Transposing vectors
x = x'; 
a = linspace(1, 10, 4)';

% Creating matrices
p = rand(2); % Random 2x2 matrix
k = rand(2, 3); % Random 2x3 matrix
i = ones(2, 3); % Matrix of ones
j = zeros(1, 5); % Matrix of zeros
identityMatrix = eye(4); % Identity matrix

% Indexing and slicing
v = [2 3 4 5 6 7 8];
thirdElement = v(3);
rangeElements = v(2:4);
specificElements = v([1, 2, 4]);

M = [1 2 3; 4 5 6; 7 8 9];
specificElement = M(2, 2);
secondRow = M(2, :);
thirdColumn = M(:, 3);
lastElementInThirdColumn = M(end, 3);

% Linear indexing
A = [5 6; 7 8];
value = A(3);

% Sub-matrix extraction
B = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
subMatrix = B(:, 2:3);
B(2, 1) = 11; % Modify an element

%% Section 2: Array Operations
x = [1 2 3];
y = x + 2; % Add a scalar
y = x * 2; % Multiply by a scalar
Max = max(x); % Maximum value
r = sqrt(x); % Square root
piRounded = round(pi);

% Remove rows or columns
A = [1 2 3 4; 5 6 7 8; 9 0 0 0];
A = A(1:end-1, :); % Remove last row
A = A(:, 1:end-1); % Remove last column

% Vector operations
v = [1 2 3 4 5 6];
v = v + 7; % Add 7 to each element
vSquared = v.^2; % Element-wise square

% Matrix multiplication vs element-wise multiplication
z = [3 4] * [10; 20]; % Matrix multiplication
z = [3 4] .* [10 20]; % Element-wise multiplication

% Size function
x = [1 2 3; 5 6 7];
dimensions = size(x);
[rows, columns] = size(x);

% Max value and index
[Max_value, idx] = max(x);

%% Section 3: Logical Operations
x = -3:5;
v = 1:10;
logicalIndex = v > 6;
filteredValues = v(logicalIndex);

% Logical indexing with two arrays
v2 = v(x > 1);

% Combine logical conditions
v4 = v(v < 3 | v > 7);

%% Section 4: Programming Constructs
% Conditional statements
q = -4;
if q >= 0
    qsqrt = sqrt(q);
else
    disp("No square root for negative numbers.");
end

% Loops
for a = 1:5
    a_squared = a^2;
    disp(a_squared);
end

x2 = linspace(1, 10, 10);
for idx = 1:length(x2)
    disp(idx);
end

%% Section 5: Plotting
a = 0:10;
b = 10:20;
figure;
plot(a, b, 'r-o', 'LineWidth', 2);
title('Linear Function');
xlabel('X-axis Label');
ylabel('Y-axis Label');
legend('Linear Function');

x = linspace(1, 100, 5);
y = x.^2;
figure;
plot(x, y, 'b-s', 'LineWidth', 2);
title('Quadratic Function');
xlabel('X Data');
ylabel('Y Data');
legend('y = x^2');

%% Section 6: Relational and Logical Indexing
piLessThan4 = pi < 4;
comparison = [5 10 12] > 7;

%% Section 7: Miscellaneous
% Open MATLAB documentation
% doc randi