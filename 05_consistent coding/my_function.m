function [vx,vy] = my_function(x,y,t)
    % Help documentation of "my_function"
    % This function computes the velocity in the x- and y-directions given
    % three vectors of position in x- and y-directions as a function of time
    % x = x-position
    % y = y-position
    % t = time
    % output
    % vx = velocity in x-direction
    % vy = velocity in y-direction

    vx=zeros(length(t),1);
    vy=zeros(length(t),1);

    vx(1:end-1) = diff(x)./diff(t); % calculate vx as delta x/delta t
    vy(1:end-1) = diff(y)./diff(t); % calculate vy as delta y/delta t

    vx(end) = vx(end-1);
    vy(end) = vy(end-1);

end
