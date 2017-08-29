
# Freefall Model
## Octave solution (will run same on Matlab)


```octave
%plot --format svg
```


```octave
set (0, "defaultaxesfontname", "Helvetica")
set (0, "defaultaxesfontsize", 18)
set (0, "defaulttextfontname", "Helvetica")
set (0, "defaulttextfontsize", 18) 
set (0, "defaultlinelinewidth", 4)
```

Define time from 0 to 12 seconds


```octave
t=[0,2,4,6,8,10,12]'
```

    t =
    
        0
        2
        4
        6
        8
       10
       12
    


Define constants and analytical solution (meters-kilogram-sec)


```octave
c=0.25; m=60; g=9.81; v_terminal=sqrt(m*g/c);

v_analytical = v_terminal*tanh(g*t/v_terminal)
```

    v_analytical =
    
        0.00000
       18.61630
       32.45521
       40.64183
       44.84646
       46.84974
       47.77002
    



```octave
v_numerical=zeros(length(t),1);
for i=1:length(t)-1
    v_numerical(i+1)=v_numerical(i)+(g-c/m*v_numerical(i)^2)*2;
end
v_numerical
```

    v_numerical =
    
        0.00000
       19.62000
       36.03213
       44.83284
       47.70298
       48.35986
       48.49089
    


Display time, velocity (analytical) and velocity (numerical)


```octave
fprintf('time (s)|vel analytical (m/s)|vel numerical (m/s)\n')
fprintf('-----------------------------------------------')
M=[t,v_analytical,v_numerical];
fprintf('%7.1f | %18.2f | %15.2f\n',M(:,1:3)');
```

    time (s)|vel analytical (m/s)|vel numerical (m/s)
    -----------------------------------------------
        0.0 |               0.00 |            0.00
        2.0 |              18.62 |           19.62
        4.0 |              32.46 |           36.03
        6.0 |              40.64 |           44.83
        8.0 |              44.85 |           47.70
       10.0 |              46.85 |           48.36
       12.0 |              47.77 |           48.49



```octave
plot(t,v_analytical,'-',t,v_numerical,'o-')
```


![plot of
velocities](https://github.uconn.edu/rcc02007/ME3255S2017/blob/master/lecture_01/output_10_0.svg)
<img
src="https://github.uconn.edu/rcc02007/ME3255S2017/blob/master/lecture_01/output_10_0.svg">

