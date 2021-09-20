%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%                        TP1 AMS304                        %%%%%%%%%
%%%%%%%%% Représentation intégrale pour l’équation de Helmholtz 2D %%%%%%%%%
%%%%%%%%%               Farah CHAABA & Valentin MICHEL             %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 0. Initialisation
k = 2*pi;
R = 1;
dens = 20;


%% 1. Générer un maillage du bord du disque

[b,c] = mesh(R,dens,k);
% plot(x,y)

%% 2. Application trace
p=[];
for m = [1:1:size(c,2)]
    p = [p trace(k,R,c(1,m),c(2,m))];
end

r = sqrt(c(1,:).^2+c(2,:).^2);
plot(mod(real(-i.*log((c(1,:)+i.*c(2,:))./r)),2*pi),real(p))
figure()
plot(mod(real(-i.*log((c(1,:)+i.*c(2,:))./r)),2*pi),imag(p))
