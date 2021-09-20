function [p]=trace(k,R,theta,r)
    n = [-100:1:100];
    p = -(k/2)*(-i).^(n).*besselj(n,k*R)./besselh(n,k*R).*(besselh(n+1,k*r)-besselh(n-1,k*r))*exp(i*theta*n)'+i*k*cos(theta)*exp(-i*k*r*cos(theta));
end