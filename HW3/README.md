# Homework #3
## Hand calculations

The following problems should be worked out by hand. You can check your work with
Matlab/Octave. Upload a pdf of the completed calculations into a github repository called
'03_review_1-10'. Then, submit your repo link to
(https://goo.gl/forms/xZ5AqRmSdugurwl33)[https://goo.gl/forms/xZ5AqRmSdugurwl33]

1. Use the Newton-Raphson method to approximate when f(x)=0. Start with an initial guess
of $x_{0}=0$. 

    $f(x)=e^{-x}-x^{3}$

    a. Compute the first 3 iterations and calculate the approximate error for each.

    b. Compare the exact derivative to the derivative used in the modified secant for
    $\delta x=0.1$ and $\delta x=0.001$ at $x_{0}$. 


2. A simple computer is being assembled with 5-bits of storage for each integer. 

    a. How many different integers can be stored with 5 bits?

    b. If we want the maximum number of positive and negative integers, what is the
    largest and smallest integer we can store with 5 bits?

3. Convert the following binary numbers to base-10 in two ways, 1- the exact conversion, and
2- the conversion if only 4 digits are saved after addition/subtraction

    a. 1.001

    b. 100.1

    c. 1.001 + 100.1 

    d. 1000 - 0.0001

4. In Problem 3c-d what kind of error is introduced by limiting the number of digits
stored?

5. Solve the following problems with matrix A:

    $A=\left[ \begin{array}{ccc}
    4 & 6 & 2 \\
    0 & 2 & 6 \\
    1 & 2 & 1\end{array} \right]$

    a. Compute the LU-decomposition

    b. Solve for x if $Ax=b$ and $b=\left[\begin{array}{c} 1\\2\\1\end{array}\right]$

6. Solve the following problems with matrix A:

    $A=\left[ \begin{array}{ccc}
    4 & -2 & 1\\
    -2 & 4 & -2\\
    1 & -2 & 2\end{array} \right]$

    a. Compute the Cholesky factorization of A

    $C_{ii}=\sqrt{a_{ii}-\sum_{k=1}^{i-1}C_{ki}^{2}}$
    
    $C_{ij}=\frac{a_{ij}-\sum_{k=1}^{i-1}C_{ki}C_{kj}}{C_{ii}}$. 

    b. Find the determinant of A, |A|.

    c. Find the inverse of A, $A^{-1}$

7.Determine the lower (L) and upper (U) triangular matrices with LU-decomposition for the
following matrices, A. Then, solve for x when Ax=b:

  a. $A=\left[ \begin{array}{cc}
        1 & 3 \\
        2 & 1 \end{array} \right]
        b=
        \left[\begin{array}{c} 
        1 \\
        1\end{array}\right]$

  a. $A=\left[ \begin{array}{cc}
      1 & 1 \\
      2 & 3 \end{array} \right]
      b=
      \left[\begin{array}{c} 
      3 \\
      4\end{array}\right]$

  a. $A=\left[ \begin{array}{cc}
      1 & 1 \\
      2 & -2 \end{array} \right]
      b=
      \left[\begin{array}{c} 
      4 \\
      2\end{array}\right]$

  b. $A=\left[ \begin{array}{ccc}
      1 & 3 & 1 \\
      -4 & -9 & 2 \\
      0 & 3 & 5\end{array} \right]
      b=
      \left[\begin{array}{c} 
      2 \\
      0 \\
      0\end{array}\right]$

  c. $A=\left[ \begin{array}{ccc}
      1 & 2 & 3 \\
      -4 & -3 & 2 \\
      0 & 3 & 5\end{array} \right]
      b=
      \left[\begin{array}{c} 
      1 \\
      -1 \\
      -3\end{array}\right]$

  d. $A=\left[ \begin{array}{ccc}
      1 & 3 & -5 \\
      1 & 4 & -8 \\
      -3 & -7 & 9\end{array} \right]
      b=
      \left[\begin{array}{c} 
      1 \\
      -1 \\
      -3\end{array}\right]$

  d. $A=\left[ \begin{array}{ccc}
      0 & 2 & -1 \\
      2 & 5 & 2 \\
      1 & -1 & 2\end{array} \right]
      b=
      \left[\begin{array}{c} 
      2 \\
      3 \\
      5\end{array}\right]$


9. Calculate the determinant of A from 1a-g. 

10. Determine the Cholesky factorization, C, of the following matrices, where

    $C_{ii}=\sqrt{a_{ii}-\sum_{k=1}^{i-1}C_{ki}^{2}}$
    
    $C_{ij}=\frac{a_{ij}-\sum_{k=1}^{i-1}C_{ki}C_{kj}}{C_{ii}}$. 

    a. A=$\left[ \begin{array}{cc}
          3 & 2  \\
          2 & 1  \end{array} \right]$

    a. A=$\left[ \begin{array}{cc}
          10 & 5  \\
          5 & 20  \end{array} \right]$

    a. A=$\left[ \begin{array}{ccc}
          10 & -10 & 20  \\
          -10 & 20 & 10  \\
          20 & 10 & 30  \end{array} \right]$

    a. A=$\left[ \begin{array}{cccc}
          21 & -1 & 0 & 0 \\
          -1 & 21 & -1 & 0 \\
          0 & -1 & 21 & -1 \\
          0 & 0 & -1 & 1 \end{array} \right]$

11. Verify that $C^{T}C=A$ for 3a-d

