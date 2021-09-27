function [b,c]=mesh(R,dens,k)
    % R: rayon
    % dens: nombre de points par lambda*
    % k: nombre d'onde
    % [x,y,T]= mesh(1,20,1)
    N = floor(dens*2*k*R+1);
    pas=2*pi/N;
    theta = [-pi:pas:pi];
    x = R*cos(theta);
    y = R*sin(theta);
    x = x(1:length(x)-1);
    y = y(1:length(y)-1);
    
    a = [x; y];
    b = [x(2:N); y(2:N)];
    b(:,N)=[x(1),y(1)];
    
    %milieux des éléments
    c(1,1:N)= a(1,:)+(b(1,:)-a(1,:))/2;
    c(2,1:N)= a(2,:)+(b(2,:)-a(2,:))/2;

end
