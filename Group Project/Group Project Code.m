v0=1250;
xt=3801.5;
yt=3484.5;
zt=8000;

xc=-19908.5;
yc=-10564;
zc=6923.286;

t=atan((xt-xc)/(yt-yc));
tf =  [0:0.5:100];
ph = [0:0.5:90]';
x=@ (tf,ph) xc+v0.*tf.*cosd(ph).*cosd(t);
y=@ (tf,ph) yc+v0.*tf.*cosd(ph).*sind(t);
z=@ (tf,ph) zc+v0.*tf.*sind(ph)-0.5.*32.2.*tf.^2;
d=@ (tf,ph) sqrt((x(tf,ph)-xt).^2+(y(tf,ph)-yt).^2+(z(tf,ph)-zt).^2);
surf ( tf , ph , d(tf,ph))



%syms tf ph d
%d=sqrt((x(tf,ph)-xt)^2+(y(tf,ph)-yt)^2+(z(tf,ph)-zt)^2)
%diff(d,tf)
%gradF = @ ( tf , ph ) diff(d,ph)
%x = gradF(1,1)