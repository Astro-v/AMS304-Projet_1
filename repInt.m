function [u]=repInt(p,s)
    global k;
    hank = [];
    for i=[1:1:size(s,2)-1]
        hank = [hank quadrature(2,0,sqrt((s(1,i+1)-s(1,i))^2 + (s(2,i+1)-s(2,i))^2),@f)];
    end
    hank = [hank quadrature(2,0,sqrt((s(1,1)-s(1,size(s,2)))^2 + (s(2,1)-s(2,size(s,2)))^2),@f)];
    u = (1i/4)*(p*hank.');
end