% Set Operational Space to This mfile Location
[pathstr,name,ext] = fileparts(which(mfilename));
cd(pathstr);

%% 2D Parabola:
% y^2 = 4*f*x

f = 1;
x = -20:0.1:20;
y = -20:0.1:20;
[x,y] = meshgrid(x,y);
z = (x.^2)./4*f;
z(z>20) = NaN;
figure;
surf(x,y,z);
axis equal;

surf2stl('2D Parabola.stl', x,y,z);

%% 3D Parabola:
% y^2 + z^2 = 4*f*x

f = 1;
x = -20:0.1:20;
y = -20:0.1:20;
[x,y] = meshgrid(x,y);
z = (x.^2)./4*f + (y.^2)./4*f;
z(z>20) = NaN;
figure;
surf(x,y,z);
axis equal;

surf2stl('3D Parabola.stl', x,y,z);