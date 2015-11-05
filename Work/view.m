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

s=0.5;
axis([0 hres 0 vres]);
%figure;
%% ray.o = Point3D(s * (x - hres / 2.0 + 0.5), s * (y - vres / 2.0 + 0.5), zw);s * (c - hres / 2.0 + 0.5), s * (r - vres / 2.0 + 0.5), zw)
px = s*(x - hres / 2.0 + 0.5);
py = s*(y - vres / 2.0 + 0.5);

for n =(px)
    for i=(py)

        stem(n, i); 
        hold on;
    end;
end;
        

grid on;
