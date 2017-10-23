rand("seed",1);

for i = 3:10
  e=sort(randi(6,[i-1,1]));
  f=sort(randi(10,[i,1]));
  g=sort(randi(9,[i-1,1]));
  eval(['A',int2str(i),'=diag(f)+diag(e,-1)+diag(g,1);']);
end
