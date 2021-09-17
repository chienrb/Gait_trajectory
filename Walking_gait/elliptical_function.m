function [xE,yE]=elliptical_function(l1,l2)
    omega = linspace(0,2*pi,100);

    b = l1 + (l2/2) - sqrt(l1^2+l2^2); % the size of radius of the ellipse in y-axis
    a = 0.95*l1/2; % the size of radius of the ellipse in x-axis
    h = 0;         % (h,k) - center of ellipse
    k = -(l1 + (l2/2));
    
    yE = h + a*cos(omega);
    xE = k + b*sin(omega);
end