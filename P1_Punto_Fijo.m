init_value=5
i=1;
e(i)=10;

while(e(i) > 0.001)
    
    if(i ==1)
        
        x(i) =init_value;      
    end
      g(i)= real(sqrt((x(i)+5)/2));
    i=i+1;
    x(i)=g(i-1);
    e(i)=abs(x(i-1)-x(i));
    
    if(e(i) > 50);
        break;
    end
end
tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 1])
grid on
hold on
plot(ite,x,'color',[1 0 0],'LineWidth',2);

xlabel('Iteraciones')
%ylabel('Error')
legend('ERROR')