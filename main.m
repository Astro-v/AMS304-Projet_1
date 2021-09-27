%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                        TP1 AMS304                        %%%%%%%%%
%%%%%%%%% Représentation intégrale pour l’équation de Helmholtz 2D %%%%%%%%%
%%%%%%%%%               Farah CHAABA & Valentin MICHEL             %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 0. Initialisation
global k;k = 2*pi;
global R;R = 1;
global dens;dens = 20;


%% 1. Générer un maillage du bord du disque

[s,c] = mesh(R,dens,k);
% plot(x,y)

%% 2. Application trace
p=[];
for m = [1:1:size(c,2)]
    p = [p trace(k,R,c(1,m),c(2,m))];
end
theta = -i*log((c(1,:)+i*c(2,:))/R);
figure()
plot(real(-i.*log((c(1,:)+i.*c(2,:))./R)),real(p),real(-i.*log((c(1,:)+i.*c(2,:))./R)),imag(p))
xlabel('\theta')
ylabel('p(r,\theta)')

%% 3. Interpolation cst par elt
% sur feuille

%% 4. Quadrature de Gauss-Legendre

%% 5. Représentation intégrale

%% 6. Validation
x = [1:0.05:10];
sol=[];
for m = [1:1:size(x,2)]
    sol = [sol solA(x(m),0)];
end

rep=[];
for m = [1:1:size(x,2)]
    rep = [rep repInt(p,s,[x(m),0])];
end

figure()
plot(x,sol,x,rep);
xlabel('x')
ylabel('Solution')
