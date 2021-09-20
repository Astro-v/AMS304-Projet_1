function [x,y,T]=mesh(R,dens,k)
    % R: rayon
    % dens: nombre de points par lambda*
    % k: nombre d'onde
    % [x,y,T]= mesh(1,20,1)
    N = floor(dens*2*k*R+1);
    pas=2*pi/N;
    theta = [0:pas:2*pi];
    x = R*cos(theta);
    y = R*sin(theta);
    x = x(1:length(x)-1);
    y = y(1:length(y)-1);
    T = [[[1:1:length(x)-1];[2:1:length(y)]] [length(x);1]];
    
    a = [x; y];
    b = [x[2:N]; y[2:N]];
    b(:,N)=[x(1),y(1)
end
