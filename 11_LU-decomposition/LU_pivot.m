function [L,U,P] = LU_pivot(A)
% GaussPivot: Gauss elimination pivoting
%   x = GaussPivot(A,b): Gauss elimination with pivoting.
% input:
%   A = coefficient matrix
%   b = right hand side vector
% output:
%   x = solution vector
[m,n]=size(A);
if m~=n, error('Matrix A must be square'); end
nb = n;
L=diag(ones(n,1));
U=A;
P=diag(ones(n,1));
% forward elimination
for k = 1:n-1
  % partial pivoting
  [big,i]=max(abs(U(k:n,k)));
  ipr=i+k-1;
  if ipr~=k
    P([k,ipr],:)=P([ipr,k],:); % if the max is not the current index ipr, pivot count
    %L([k,ipr],:)=L([ipr,k],:);
    %U([k,ipr],:)=U([ipr,k],:);
  end
  for i = k+1:n
    fik=U(i,k)/U(k,k);
    L(i,k)=fik;
    U(i,k:nb)=U(i,k:nb)-fik*U(k,k:nb);
  end
end
% back substitution
%x=zeros(n,1);
%x(n)=Aug(n,nb)/Aug(n,n);
%for i = n-1:-1:1
%  x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
%end
