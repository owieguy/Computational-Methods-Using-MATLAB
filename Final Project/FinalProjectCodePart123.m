%Part 1
v0=1250;
xt=3801.5
yt=3484.5
zt=8000

xc=-19908.5;
yc=-10564;
zc=6923.286;

thmin=atand((yt-yc)/(xt-xc));
tf =  [0:0.5:100];
ph = [0:0.5:90]';
x=@ (tf,ph) xc+v0.*tf.*cosd(ph).*cosd(thmin);
y=@ (tf,ph) yc+v0.*tf.*cosd(ph).*sind(thmin);
z=@ (tf,ph) zc+v0.*tf.*sind(ph)-0.5.*32.2.*tf.^2;
d=@ (tf,ph) sqrt((x(tf,ph)-xt).^2+(y(tf,ph)-yt).^2+(z(tf,ph)-zt).^2);
surf ( tf , ph , d(tf,ph));


N=1e6;
g=25+75*rand(2,N);
z=d(g(1,:),g(2,:));
[value, index] = min(z);
xmin=g(1,index);
ymin=g(2,index);

g=[randn(1,N)+xmin;randn(1,N)+ymin];
z=d(g(1,:),g(2,:));
[value, index] = min(z);
xmin=g(1,index);
ymin=g(2,index);

g=[.05*randn(1,N)+xmin;0.05*randn(1,N)+ymin];
z=d(g(1,:),g(2,:));
[value, index] = min(z);
xmin=g(1,index);
ymin=g(2,index);

g=[.0005*randn(1,N)+xmin;0.0005*randn(1,N)+ymin];
z=d(g(1,:),g(2,:));
[value, index] = min(z);
tfmin=g(1,index);
phmin=g(2,index);

g=[.000005*randn(1,N)+xmin;0.000005*randn(1,N)+ymin];
z=d(g(1,:),g(2,:));
[value, index] = min(z);
tfmin=g(1,index)
phmin=g(2,index)

dmin=d(tfmin,phmin);

xPart1=x(tfmin,phmin)
yPart1=y(tfmin,phmin)
zPart1=zc+v0.*tfmin.*sind(phmin)-0.5.*32.2.*tfmin.^2




%Part 2
tspan=[0,tfmin];

IC=[xc,yc,zc,v0*cosd(phmin)*cosd(thmin),v0*cosd(phmin)*sind(thmin),v0*sind(phmin)];

[tList,SList]=ode45(@Part2ODE,tspan,IC);
xPart2=SList(end,1)
yPart2=SList(end,2)
zPart2=SList(end,3)




%Part 3
xPart3=SList(end,1);
yPart3=SList(end,2);
zPart3=SList(end,3);

while ~((xt-10>xPart3 && xPart3<xt+10) && (yt-10>yPart3 && yPart3<yt+10))
IC=[xc,yc,zc,v0*cosd(75)*cosd(thmin),v0*cosd(75)*sind(thmin),v0*sind(75)];
[tList,SList]=ode45(@Part3ODE,tspan,IC);
xPart3=SList(end,1)
yPart3=SList(end,2)
zPart3=SList(end,3)

if xPart3<xt || yPart3<yt
    phmin=phmin+0.1
end
end





%Part 2 function
function dS=Part2ODE(t,S)
g=32.1741;
dS=[S(4);
    S(5);
    S(6);
    0;
    0;
    -g];
end






%Part 3 function
function dS=Part3ODE(t,S)
g=32.1741;
m=0.4536;
v=sqrt(S(4)^2+S(5)^2+S(6)^2);
p=0.00237;
A=pi*37.5^2;
C=0.2;
dS=[S(4);
    S(5);
    S(6);
    -.5*p*v^2*A*C*S(4)/(v*m);
    -.5*p*v^2*A*C*S(5)/(v*m);
    (-.5*p*v^2*A*C*S(6)/v-g)/m];
end