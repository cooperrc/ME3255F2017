function [v,e]=animate_eig(k,m)
  % create a series of png's for use in an animation based on 
  % spring constants [k1,k2,k3]=k
  % and
  % masses 
  % [m1,m2]=m

  % check inputs for m and k
  if length(m)==1
    m1=m;
    m2=m;
  else
    m1=m(1);
    m2=m(2);
  end
  if length(k)==1
    k1=k; k2=k; k3=k;
  else
    k1=k(1);
    k2=k(2);
    k3=k(3);
  end
  setdefaults
  K=[k1/m1+k2/m1,-k2/m1;-k3/m2,k2/m2+k3/m2];
  [v,e]=eig(K);
  w1=e(1,1); w2=e(2,2);
  scale = 0.5; % the magnitude of oscillations is not important for vibrational modes
               % just set scale to 1/2 for nice plots
               % the eigenvector magnitude is independent of the solution
  X11=v(1,1)*scale; X12=v(2,1)*scale;
  X21=v(1,2)*scale; X22=v(2,2)*scale;
  f11=@(t) X11*sin(w1*t); f12=@(t) X12*sin(w1*t);
  f21=@(t) X21*sin(w2*t); f22=@(t) X22*sin(w2*t);
  f=figure();
  time=linspace(-1,4);
  % create a loop to plot the position over time where mass 1 and 2 start at x=1 and x=2 m
  % then for the next vibrational mode, mass 1 and 2 start at x=3 and x=4 m

  for i=1:length(time)
    t=time(i);
    plot(f11(t)+1,0,'rs',f11(time+t)+1,-time,...
    f12(t)+2,0,'rs',f12(time+t)+2,-time,...
    f21(t)+3,0,'bo',f21(time+t)+3,-time,...
    f22(t)+4,0,'bo',f22(time+t)+4,-time)
    axis([0 6 -4 1])
    title('Vibration Modes')
    xlabel('position (m)')
    ylabel('time (s)')
    filename=sprintf('output/%05d.png',i);
    % another option for saving a plot to a png is the 'print' command
    print(filename)
  end
  % this is a system command to use ImageMagick's cli 'convert' to create an animated gif
  % if you don't have ImageMagick installed, comment this next line
  system ("convert -delay 10 -loop 0 output/*png eigenvalues.gif")
end
