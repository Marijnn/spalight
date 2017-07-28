# Syntax

## General
- A simulation is performed with the spacarlight() command.
- The spacarlight() command requires at least five input arguments (a sixth is optional). If fewer are supplied, warnings and a visualization can appear to help in completing the input.
- The results of a successful simulation are returned in a structure (the first and only output argument)

## Input
1. Node positions nodes

2. Element connectivity elements

3. Node properties nprops.

    fix_all (fix)
    fix_xyz (fix_pos) 
    fix_rot (fix_orien)
    
    disp_x (displ_x)
    disp_y (displ_y)
    disp_z (displ_z)
    disp_rx (rot_x)
    disp_ry (rot_y)
    disp_rz (rot_z)

    force
    moment

    mass
    inertia (mominertia)

    fix_x
    fix_y
    fix_z

    force_initial (force_add)
    moment_initial (moment_add)

    disp_initial_x (displ_x_add)
    disp_initial_y (displ_y_add)
    disp_initial_z (displ_z_add)
    disp_initial_rx (rot_x_add)
    disp_initial_ry (rot_y_add)
    disp_initial_rz (rot_z_add)
    
4. Element properties eprops.

    El_Nrs (elems)
    E (emod)
    G (smod)
    rho (dens)
    type
    dim
    orien
    n_beams (nbeams)
    flex
    color
    hide

5. Releases rls.

    def

6. Optional input opt.
    
    filename
    gravity
    simple_mode (silent)
    buck_load (buckload)
    showinputonly

## Output