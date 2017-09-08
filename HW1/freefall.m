function [v_analytical,v_terminal,t]=freefall(N)
    % help file for freefall.m
    % N is number of timesteps between 0 and 12 sec
    % v_an...
    t=linspace(0,12,N)';
    c=0.25; m=60; g=9.81; v_terminal=sqrt(m*g/c);

    v_analytical = v_terminal*tanh(g*t/v_terminal);
    v_numerical=zeros(length(t),1);
    delta_time =diff(t);
    for i=1:length(t)-1
        v_numerical(i+1)=v_numerical(i)+(g-c/m*v_numerical(i)^2)*delta_time(i);
    end
    % Print values near 0,2,4,6,8,10,12 seconds
    indices = round(linspace(1,length(t),7));
    fprintf('time (s)|vel analytical (m/s)|vel numerical (m/s)\n')
    fprintf('-----------------------------------------------\n')
    M=[t(indices),v_analytical(indices),v_numerical(indices)];
    fprintf('%7.1f | %18.2f | %15.2f\n',M(:,1:3)');
    plot(t,v_analytical,'-',t,v_numerical,'o-')
end
