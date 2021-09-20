function [I] = quadrature(n,a,b,f)
    % n : entre 2 et 7
    % a,b : sont les coordonés des points dans R^2
    % f : function
   if (n==2)
       w = [1,1];
       ksi = [-1/sqrt(3),1/sqrt(3)];
   elseif (n==3)
       w = [8/9,5/9,5/9];
       ksi = [0,-sqrt(3/5),sqrt(3/5)];
   else
       w = [8/9,5/9,5/9];
       ksi = [0,-sqrt(3/5),sqrt(3/5)];
   end
   I = 0;
   for ind=[1:1:n]
        I = I +  w(ind)*f(ksi(ind)*((b-a)/2)+(b+a)/2);
   end
end