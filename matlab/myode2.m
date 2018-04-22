% Function to solve d^2ydx^2+y = 0.
function myode2()
x = linspace(0.5,1); 
solinit = bvpinit(x,[0,0]); %[0,0] just a guess, nevermind

sol1 = bvp4c(@deriv,@bcs1,solinit); %bvp4c(odeFunc, bcFunc, initValues)
sol2 = bvp4c(@deriv,@bcs2,solinit);
plot(sol1.x,sol1.y(1,:),'b-x');
hold on
plot(sol2.x,sol2.y(1,:),'b-o');
h=legend(['case I'],['case II']);
set(h, 'Box', 'off');

 
function dYdx = deriv(x,Y)
 
dYdx(1) = Y(2); 
dYdx(2) = x^-1*(-Y(2)+144*x*Y(1));
 
% boundary conditions y(a)=1, y(b)=0.
function res = bcs1(ya,yb) %ya(1), yb(1) = y(1) value, ya(2), yb(2) = dy/dx(1) value
res = [ ya(1) - 1 
        yb(1)]; %ya(1) - 1 == y(1st bc) = 1; yb(1) == y(2nd bc) = 0
                %ya(2), yb(2) stands for derivative BCs
                
% boundary conditions y(a)=1, y'(b)=0.
function res = bcs2(ya,yb) %ya(1), yb(1) = y(1) value, ya(2), yb(2) = dy/dx(1) value
res = [ ya(1) - 1 
        yb(2)]; %ya(1) - 1 == y(1st bc) = 1; yb(1) == y(2nd bc) = 0
                %ya(2), yb(2) stands for derivative BCs