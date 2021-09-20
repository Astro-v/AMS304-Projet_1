function [y]=f(x)
    global k;
    y = besselh(0,k*x);
end