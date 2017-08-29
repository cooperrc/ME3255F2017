function [ax,ay]=my_caller(x,y,t)
    % Help documentation of "my_caller"
    % This function computes the acceleration in the x- and y-directions given
    % three vectors of position in x- and y-directions as a function of time
    % x = x-position
    % y = y-position
    % t = time
    % output
    % ax = acceleration in x-direction
    % ay = acceleration in y-direction

    function v=diff_match_dims(x,t)
      v=zeros(length(t),1);
      v(1:end-1)=diff(x)./diff(t);
      v(end)=v(end-1);
    end

    [vx,vy]=my_function(x,y,t);

    ax = diff_match_dims(vx,t);
    ay = diff_match_dims(vy,t);

end
