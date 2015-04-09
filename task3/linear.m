x0=[0;0;0;0]
A=[-1 0 0 0; 0 -1 0 0; 0 0 -1 0; 0 0 0 -1]
b=[0; 0; 0; 0]
Aeq=[0.3 0.3 -0.6 -0.4;
     -0.3 -0.3 0.6 0.4;
     1 1 1 1];
beq=[0;0;1];
%Максимизирование функции
[x, fval] = fmincon(inline('-(2.1*x(1)+2.1*x(2)-1.2*x(3)-0.4*x(4))'), x0, A, b, Aeq, beq)

q11 = x(1)/(x(1)+x(2))
q21 = x(2)/(x(1)+x(2))
q12 = x(3)/(x(3)+x(4))
q22 = x(4)/(x(3)+x(4))