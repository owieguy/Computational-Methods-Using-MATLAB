v0=1250;
xt=3801.5;
yt=3484.5;
zt=8000;

xc=-19908.5;
yc=-10564;
zc=6923.286;

thmin=atand((yt-yc)/(xt-xc))
tfmin=73.1105;
phmin=72.4484;
tspan=[0,tfmin];

IC=[xc,yc,zc,v0*cosd(phmin)*cosd(thmin),v0*cosd(phmin)*sind(thmin),v0*sind(phmin)];
thmin=atand((yt-yc)/(xt-xc));



[tList,SList]=ode45(@hitTargetODE,tspan,IC)



function dS=hitTargetODE(t,S)
g=32.1741;
dS=[S(4);
    S(5);
    S(6);
    0;
    0;
    -g];
end