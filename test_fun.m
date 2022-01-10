%equation
function dydt=test_fun(t,y)
m1=100;
m2=600;
m3=150;

dydt=[-m1*y(1)*y(2)+m2*y(3);
    -m1*y(1)*y(2)+(m2+m3)*y(3);
    m1*y(1)*y(2)-(m2+m3)*y(3);
    m2*y(3)];