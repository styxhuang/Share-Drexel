syms C(z) T(z)
% D2C = diff(C, z, 2);
% D2T = diff(T, z, 2);
% DC = diff(C,z);
% DT = diff(T,z);
% 
% %Case I
% ode1 = 'D2C - DC - 8*C = 0';
% ode2 = 'D2T - DT - 1*8*C = 0';
% cond1 = 'DC(0) = C(0) - 1';
% cond2 = 'DT(0) = T(0) - 1';
% cond3 = 'DC(1) = 0';
% cond4 = 'DT(1) = 0';
% [C, T] = dsolve(ode1, ode2, cond1, cond2, cond3, cond4, 'z');
% CSol = simplify(C)
% TSol = simplify(T)
% z=linspace(0,1).';
% y1=subs(CSol);
% y2=subs(TSol);
% figure(1)
% plot(z,y1)
% figure(2)
% plot(z,y2)

%Case II
% ode1 = 'D2C - DC - 8*C = 0';
% ode2 = 'D2T - DT - 1*8*C = 0';
% cond1 = 'DC(0) = C(0) - 1';
% cond2 = 'DT(0) = T(0) - 1';
% cond3 = 'DC(1) = 0';
% cond4 = 'DT(1) = 0';
% [C, T] = dsolve(ode1, ode2, cond1, cond2, cond3, cond4, 'z');
% CSol = simplify(C)
% TSol = simplify(T)
% z=linspace(0,1).';
% y1=subs(CSol);
% y2=subs(TSol);
% figure(1)
% plot(z,y1)
% figure(2)
% plot(z,y2)