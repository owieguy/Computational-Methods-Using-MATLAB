f1=@(x,y) (((10+31.*x.^(-0.5)+1.3.*y.^(-0.2)-18).*x)+(5+15.*y.^(-0.4)+0.8.*x.^(-0.08)-10).*y)
% pv=myGrad(p0,0.1)

xv=0:0.1:10;
[X,Y]=meshgrid(xv,xv);

Z = f1(X,Y);

figure(223)
surf(X,Y,f1(X,Y),'linestyle','none');hold  on
%plot(pv(1,:),pv(2,:),pv(2,:))





N=1e8;
g=0.1 + 10*rand(2,N);
z=f1(g(1,:),g(2,:));
[value, index] = max(abs(z))
wo=g(1,index)
ao=g(2,index)