function [x,y]=mesh(a,dens,k)
    
    N = floor(dens*2*k*R+1);
    theta = [0:0.1:2*pi];
    x = [];
    y = [];
    M
    for i = theta
        x = [x a*cos(i)];
        y = [y a*sin(i)];
        
    end
    