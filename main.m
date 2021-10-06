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

%figure()
%plot(real(-i.*log((c(1,:)+i.*c(2,:))./R)),real(p),real(-i.*log((c(1,:)+i.*c(2,:))./R)),imag(p))
%xlabel('\theta')
%ylabel('p(r,\theta)')

%% 3. Interpolation cst par elt
% sur feuille

%% 4. Quadrature de Gauss-Legendre

%% 5. Représentation intégrale

%% 6. Validation

x = [1:0.01:5];
sol=[];
for m = [1:1:size(x,2)]
    sol = [sol solA(x(m),0)];
end

rep=[];
for m = [1:1:size(x,2)]
    rep = [rep repInt(p,s,[x(m),0])];
end

figure()
plot(x,real(sol),x,real(rep),x,imag(sol),x,imag(rep));
legend({'Partie réel de la solution Analytique','Partie réel de la représentation intégrale','Partie imaginaire de la solution Analytique','Partie réel de la représentation intégrale'})
xlabel('x')
ylabel('Solution')

y = [1:0.01:5];
sol=[];
for m = [1:1:size(y,2)]
    sol = [sol solA(0,y(m))];
end

rep=[];
for m = [1:1:size(y,2)]
    rep = [rep repInt(p,s,[0,y(m)])];
end

figure()
plot(y,real(sol),y,real(rep),y,imag(sol),y,imag(rep));
legend({'Partie réel de la solution Analytique','Partie réel de la représentation intégrale','Partie imaginaire de la solution Analytique','Partie réel de la représentation intégrale'})
xlabel('y')
ylabel('Solution')

z = sqrt(2)/2 *[1:0.01:5];
sol=[];
for m = [1:1:size(z,2)]
    sol = [sol solA(z(m),z(m))];
end

rep=[];
for m = [1:1:size(z,2)]
    rep = [rep repInt(p,s,[z(m),z(m)])];
end

figure()
plot(2/sqrt(2)*z,real(sol),2/sqrt(2)*z,real(rep),2/sqrt(2)*z,imag(sol),2/sqrt(2)*z,imag(rep));
legend({'Partie réel de la solution Analytique','Partie réel de la représentation intégrale','Partie imaginaire de la solution Analytique','Partie réel de la représentation intégrale'})
xlabel('z')
ylabel('Solution')

%% DISPLAY SOLUTION
% x = [-5:0.02:5];
% y = [-5:0.02:5];
% sol=[];
% for m = [1:1:size(x,2)]
%     solb = [];
%     for l = [1:1:size(y,2)]
%         if (sqrt(x(m)^2+y(l)^2)>=R)
%             g = repInt(p,s,[x(m),y(l)]);
%             g = solA(x(m),y(l));
%             solb = [solb (real(g)+1)/2];
%         else
%             solb = [solb 0];
%         end
%     end
%     sol = [sol;solb];
% end
% 
% figure()
% imshow(sol)


%% TESTING TIME 
% dens = 4000
% tic
% [s,c] = mesh(R,dens,k);
% p=[];
%  for m = [1:1:size(c,2)]
%     p = [p trace(k,R,c(1,m),c(2,m))];
% end
% repInt(p,s,[2,2]);
% temps = toc

