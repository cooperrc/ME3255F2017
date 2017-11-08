function I = trap(func,a,b,n,varargin)
% trap: composite trapezoidal rule quadrature
%   I = trap(func,a,b,n,pl,p2,...):
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
xvals=linspace(a,b,n);
fvals=func(xvals,varargin{:});
s=func(a,varargin{:});
s = s + 2*sum(fvals(2:n-1));
s = s + func(b,varargin{:});
I = (b - a) * s/(2*n);
