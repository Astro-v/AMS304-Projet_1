function [u]=repInt(p,s,x)
    % p trace
    % s sommet

    global k;
    hank = [];
    ordre = 3; % Orde de la méthode de quadrature
    for i=[1:1:size(s,2)-1]
        hank = [hank quadrature(ordre,s(:,i),s(:,i+1),@f,x)];
    end
    hank = [hank quadrature(ordre,s(:,size(s,2)),s(:,1),@f,x)];
    u = (1i/4)*(p*hank.');
end