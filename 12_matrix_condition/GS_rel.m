function [x,ea,iter] = GS_rel(A,b,lambda,es,maxit)
% GaussSeidel: Gauss Seidel method
%   x = GaussSeidel(A,b): Gauss Seidel without relaxation
% input:
%   A = coefficient matrix
%   b = right hand side vector
%   es = stop criterion (default = 0.00001%)
%   maxit = max iterations (default = 50)
% output:
%   x = solution vector
if nargin<3,error('at least 2 input arguments required'),end
if nargin<5|isempty(maxit),maxit=50;end
if nargin<4|isempty(es),es=0.00001;end
[m,n] = size(A);
if m~=n, error('Matrix A must be square'); end
C = A-diag(diag(A));
x=zeros(n,1);
for i = 1:n
  C(i,1:n) = C(i,1:n)/A(i,i);
end

d = b./diag(A);

iter = 0;
while (1)
  xold = x;
  for i = 1:n
    x(i) = d(i)-C(i,:)*x;
    x(i) = lambda*x(i)+(1-lambda)*xold(i);
    if x(i) ~= 0
      ea(i) = abs((x(i) - xold(i))/x(i)) * 100;
    end
  end
  iter = iter+1;
  if max(ea)<=es | iter >= maxit, break, end
end
