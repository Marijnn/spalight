addpath ~/mlib/sp17ex
% addpath ../spaplus
% addpath ../spaprivate

clear
clc

L = 0.5;
d = 2e-5;

nodes = [
    0 0 0;
    0 L 0;
    0 L+d 0;
    0 1 0;
    ];

elements = [
    1 2;
    2 3;
    4 3;
    ];
% 
nprops(1).fix = true;
nprops(2).fix = true;
nprops(3).displ_initial_x = 0;
nprops(4).force = [1 0 0];
% nprops(4).fix_orien = true;
nprops(4).mominertia = [0 0 0 0 0.1 0];

eprops(1).elems = [1 2 3];
eprops(1).emod = 210e9;
eprops(1).smod = 70e9;
eprops(1).dens = 7800;
eprops(1).dim = [0.03 0.0005];
eprops(1).type = 'leafspring';
eprops(1).flex = [1 2];
% eprops(2).flex = [1];
eprops(1).orien = [0 0 1];
eprops(1).nbeams = 1;

rls(1).def = 1:6;
rls(2).def = 3;

% opt.filename = '';
opt.silent = false;
opt.showinputonly = false;

a=spacarlight(nodes,elements,nprops,eprops,rls,opt);