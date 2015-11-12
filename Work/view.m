clc;
clear;
close all;
length = 10;
vres = length;
hres = length;
x =(0:1:vres-1);
y =(0:1:hres-1);

z=linspace(1,1,length);
xlabel('vres');
ylabel('hres');

s=1;
axis([0 hres*s 0 vres*s]);
%set(gca,'xtick',[0:1:hres*s],'XColor','k');
%set(gca,'ytick',[0:1:vres*s],'YColor','r');
%figure;
%% ray.o = Point3D(s * (x - hres / 2.0 + 0.5), s * (y - vres / 2.0 + 0.5), zw);s * (c - hres / 2.0 + 0.5), s * (r - vres / 2.0 + 0.5), zw)
px = s*(x - hres / 2.0 + 0.005);
py = s*(y - vres / 2.0 + 0.005);

for n =(px)
    for i=(py)
        stem(n, i,'MarkerFaceColor','Green'); 
        hold on;
    end;
end;

a =(-5:1:5);
b=linspace(5,5,length+1);
stem(b, a,'LineStyle',':','Marker','square');
stem(a, b,'LineStyle',':','Marker','square');
b=linspace(-5,-5,length+1);
stem(b, a,'LineStyle',':','Marker','square');
stem(a, b,'LineStyle',':','Marker','square');
grid on;


