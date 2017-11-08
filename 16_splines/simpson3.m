function I = simpson3(func,a,b,n,varargin)
% simpson3: composite simpson's 1/3 rule
%   I = simpson3(func,a,b,n,pl,p2,...):
%       composite trapezoidal rule
% input:
%   func = name of function to be integrated
%   a, b = integration limits
%   n = number of segments (default = 100)
%   pl,p2,... = additional parameters used by func
% output:
%   I = integral estimate
if nargin<3,error('at least 3 input arguments required'),end
if ~(b>a),error('upper bound must be greater than lower'),end
if nargin<4|isempty(n),n=100;end
x = a; h = (b - a)/n;

xvals=linspace(a,b,n+1);
fvals=func(xvals,varargin{:});
s=fvals(1);
s = s + 4*sum(fvals(2:2:end-1));
s = s + 2*sum(fvals(3:2:end-2));
s = s + fvals(end);
I = (b - a) * s/(3*n);
