function x = Jacobi(A,b,es,maxit)
% GaussSeidel: Gauss Seidel method
%   x = GaussSeidel(A,b): Gauss Seidel without relaxation
% input:
%   A = coefficient matrix
%   b = right hand side vector
%   es = stop criterion (default = 0.00001%)
%   maxit = max iterations (default = 50)
% output:
%   x = solution vector
if nargin<2,error('at least 2 input arguments required'),end
if nargin<4|isempty(maxit),maxit=50;end
if nargin<3|isempty(es),es=0.00001;end
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
  x = d-C*x;
  % if any values of x are zero, we add 1 to denominator so error is well-behaved
  i_zero=find(x==0);
  i=find(x~=0);
  if length(i_zero)>0
    ea(i_zero)=abs((x-xold)./(1+x)*100);
    ea(i) = abs((x(i) - xold(i))./x(i)) * 100;
  else
    ea = abs((x - xold)./x) * 100;
  end
  iter = iter+1;
  if max(ea)<=es | iter >= maxit, break, end
end
