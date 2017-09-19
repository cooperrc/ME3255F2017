function E_LJ =lennard_jones(x,sigma,epsilon)
  E_LJ = 4*epsilon*((sigma./x).^12-(sigma./x).^6);
end

