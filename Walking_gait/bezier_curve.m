% B(t) = P0(1-t)^3 + 3*P1*t*(1-t)^2 + 3*P2*t^2*(1-t) + P3*t^3; t thuoc [0,1]
function [xE,yE]=bezier_curve(P0,P1,P2,P3)
    t=linspace(0,1,100);
    for i=1:length(t)
        raw = P0*(1-t(i))^3 + 3*P1*t(i)*(1-t(i))^2 + 3*P2*t(i)^2*(1-t(i)) + P3*t(i)^3;
        xE(1,i)=raw(1,1);
        yE(1,i)=raw(2,1);
    end
end
