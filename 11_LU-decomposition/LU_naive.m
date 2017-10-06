function [L, U] = LU_naive(A)
% GaussNaive: naive Gauss elimination
%   x = GaussNaive(A,b): Gauss elimination without pivoting.
% input:
%   A = coefficient matrix
%   y = right hand side vector
% output:
%   x = solution vector
[m,n] = size(A);
if m~=n, error('Matrix A must be square'); end
nb = n;
L=diag(ones(n,1));
U=A;
% forward elimination
for k = 1:n-1
  for i = k+1:n
    fik = U(i,k)/U(k,k);
    L(i,k)=fik;
    U(i,k:nb) = U(i,k:nb)-fik*U(k,k:nb);
  end
end
%% back substitution
%x = zeros(n,1);
%x(n) = Aug(n,nb)/Aug(n,n);
%for i = n-1:-1:1
%  x(i) = (Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
%end
