function [p]=trace(k,R,x,y)
    r = sqrt(x^2+y^2); 
    theta = -i*log((x+i*y)/r);
    %n = [-100:1:100];
    %p = (k/2)*(-i).^(n).*(besselj(n,k*R)./besselh(n,k*R)).*(besselh(n-1,k*r)-besselh(n+1,k*r))*exp(i*theta*n).'+i*k*cos(theta)*exp(-i*k*r*cos(theta));
    %p = conj(p);
    p = 0;
    for n = [-20:1:20]
        p = p - (k/2)*(-i)^(n)*(besselj(n,k*R)/besselh(n,k*R))*(besselh(n-1,k*r)-besselh(n+1,k*r))*exp(i*theta*n)'+i*k*cos(theta)*exp(-i*k*r*cos(theta));
    end
end