function yp=predprey(t,y,a,b,c,d)
	% predator-prey model (Lotka-Volterra equations)
	yp=zeros(2,1);
	yp(1)=a*y(1)-b*y(1)*y(2);
	yp(2)=-c*y(2)+d*y(1)*y(2);
end
