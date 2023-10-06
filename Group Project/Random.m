v0=1250;
xt=3801.5;
yt=3484.5;
zt=8000;

xc=-19908.5;
yc=-10564;
zc=6923.286;

th=atand((yt-yc)/(xt-xc));
ph=72.4484

T=0:.005:73.1105
x=@ (t) xc+v0.*t.*cosd(ph).*cosd(th);
y=@ (t) yc+v0.*t.*cosd(ph).*sind(th);
z=@ (t) zc+v0.*t.*sind(ph)-0.5.*32.2.*t.^2;
Traj1 = [x(T);y(T);z(T)]
plot(Traj1(1,:),Traj1(1,:)')