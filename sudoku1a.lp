% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
row(1..4).
col(1..4).
num(1..4).


1 {sudoku(X, Y, N) : num(N) } 1 :- row(X), col(Y).

:- initial(X, Y, N0), sudoku(X, Y, N), N != N0.

:- row(X), num(N), col(Y1), col(Y2), Y1 < Y2, sudoku(X, Y1, N), sudoku(X, Y2, N).

:- col(Y), num(N), row(X1), row(X2), X1 < X2, sudoku(X1, Y, N), sudoku(X2, Y, N).
#show sudoku/3.
