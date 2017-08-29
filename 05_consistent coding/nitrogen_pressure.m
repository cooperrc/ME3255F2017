function P=nitrogen_pressure(v,T)
  % function to calculate Pressure of Nitrogen using ideal gas law given the specific
  % volume, v (m^3/kg), and temperature, T (K)
  % Pv = RT
  %  R=0.2968; % kJ/kg-K
  % P [in kPa] = nitrogen_pressure(v [in m^3/kg], T[in K])
  R=0.2968; % kJ/kg-K
  P=R*T./v;
end

