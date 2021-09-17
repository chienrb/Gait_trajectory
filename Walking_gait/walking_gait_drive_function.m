function [hip, knee]=walking_gait_drive_function(A,f)
    T=1/f;t=linspace(0,T,100);
    for i=1:length(t)
        if t(i)<3*T/8
            hip(i)=A*sin( (2/3)*(2*pi*f*t(i) - 1.5*pi) );
        elseif 3*T/8<=t(i) && t(i)<5*T/8
            hip(i)=A*sin( 2*(2*pi*f*t(i) - pi) );
        elseif 5*T/8<=t(i) && t(i)<=T
            hip(i)=A*cos( (2/3)*(2*pi*f*t(i) - 1.25*pi) );
        end
    end
    
    for i=1:length(t)
        if t(i)<3*T/8
            knee(i)=0;
        elseif 3*T/8<=t(i) && t(i)<5*T/8
            knee(i)=A*sin( 2*(2*pi*f*t(i) - 0.75*pi) );
        elseif 5*T/8<=t(i) && t(i)<=T
            knee(i)=0;
        end
    end
end