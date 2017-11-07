# Extra Credit Assignment \#1
## Due 9/15 by 11:59 pm

Go to Mathworks [Matlab Onramp](http://bit.ly/2q97vcS) and create an account. Complete
Part 10 - "Review Problems" (Project - Electricity Usage) and (Project - Audio Frequency). 

Save your progress report and put it in a repository called 'ME3255-Extra_Credit'.


# Extra Credit Assignment \#2
## Due 11/1 by 11:59 pm

Find a dartboard e.g. [Sports Bar](https://www.yelp.com/biz/the-sports-bar-north-windham). And tack the
following [polar_graph.pdf](./polar_graph.pdf) to the dartboard. Throw 10 darts (that hit
the board) and record the radius and angle that the dart hit the target in a csv file
in your 'ME3255-Extra_Credit' repository called `data.csv`. Organize the csv file in
columns with your netid on each row as such,

| user | radius (cm) | angle (deg) |
|---| --- | ---| 
|rcc02007 | 1 | 30 |
|rcc02007 | ...| ... |
|rcc02007 | ...| ... |

# Extra Credit Assignment \#3
## Due 11/17 by 11:59pm

**Nonlinear Regression - Logistic Regression**

![logistic regression of Challenger O-ring failure](http://www.stat.ufl.edu/~winner/cases/challenger.ppt)

Use the Temperature and failure data from the Challenger O-rings 
[challenger_oring.csv](./challenger_oring.csv). Your independent variable is temperature and your dependent
variable is failure (1=fail, 0=pass). Create a function called `cost_logistic.m` that
takes the vector `a`, and independent variable `x` and dependent variable `y`. Use the
function, $\sigma(t)=\frac{1}{1+e^{-t}}$ where $t=a_{0}+a_{1}x$. Use the cost function,

$J(a_{0},a_{1})=1/m\sum_{i=1}^{n}\left[-y_{i}\log(\sigma(t_{i}))-(1-y_{i})\log((1-\sigma(t_{i})))\right]$

and gradient

$\frac{\partial J}{\partial a_{i}}=
1/m\sum_{k=1}^{N}\left(\sigma(t_{k})-y_{k}\right)x_{k}^{i}$

where $x_{k}^{i} is the k-th value of temperature raised to the i-th power (0, and 1)

a. edit `cost_logistic.m` so that the output is `[J,grad]` or [cost, gradient]

b. use the following code to solve for a0 and a1

```matlab
% Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = ...
fminunc(@(a)(costFunction(a, x, y)), initial_a, options);
```

c. plot the data and the best-fit logistic regression model

```matlab
plot(x,y, x, sigma(a(1)+a(2)*x))
```

