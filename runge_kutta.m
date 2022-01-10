function [x,y]=runge_kutta(ufunc,y0,h,a,b)
n=floor((b-a)/h);       %steps
x(1)=a;                 %time0
y(:,1)=y0;              
for i=1:n                  
    x(i+1)=x(i)+h;    
    k1=ufunc(x(i),y(:,i));  
    k2=ufunc(x(i)+h/2,y(:,i)+h*k1/2);    
    k3=ufunc(x(i)+h/2,y(:,i)+h*k2/2);   
    k4=ufunc(x(i)+h,y(:,i)+h*k3);   
    y(:,i+1)=y(:,i)+h*(k1+2*k2+2*k3+k4)/6;
end