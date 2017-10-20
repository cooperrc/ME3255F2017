function iters = lambda_fcn(A,b,lambda)
  % function to minimize the number of iterations for a given Ax=b solution
  % using default Jacobi_rel parameters of es=0.00001 and maxit=50

  [x,ea,iters]= Jacobi_rel(A,b,lambda,1e-8);
end


