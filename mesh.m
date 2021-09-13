function [x,y]=mesh(R,dens,k)
    % R: rayon
    % dens: nombre de points par lambda*
    % k: nombre d'onde
    % [x,y]= mesh(1,20,1)
    N = floor(dens*2*k*R+1);
    pas=2*pi/N;
    theta = [0:pas:2*pi];
    x = R*cos(theta);
    y = R*sin(theta);
