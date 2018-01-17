fprintf('Mexing fast marching toolbox');

% compile mex file
mex mex/perform_front_propagation_2d.cpp mex/perform_front_propagation_2d_mex.cpp mex/fheap/fib.cpp 
mex mex/perform_front_propagation_3d.cpp mex/perform_front_propagation_3d_mex.cpp  mex/fheap/fib.cpp 
mex mex/perform_circular_front_propagation_2d.cpp mex/perform_front_propagation_2d.cpp mex/fheap/fib.cpp 

% anisotropic FM
% mex mex/anisotropic-fm//perform_front_propagation_anisotropic.cpp
mex mex/anisotropic-fm-feth/fm2dAniso.cpp
warning('Disabled: perform_front_propagation_anisotropic.cpp')
% mex mex/perform_front_propagation_anisotropic.cpp

% compiling skeleton
mex mex/skeleton.cpp
% compiling distance transform
mex mex/eucdist2.c

disp('Compiling perform_front_propagation_mesh, might take some time.');
rep = 'mex/';
files =  { ...
    'perform_front_propagation_mesh.cpp', ...
    'gw/gw_core/GW_Config.cpp',           ...
    'gw/gw_core/GW_FaceIterator.cpp',     ...
    'gw/gw_core/GW_SmartCounter.cpp',     ...
    'gw/gw_core/GW_VertexIterator.cpp',   ...
    'gw/gw_core/GW_Face.cpp',             ...
    'gw/gw_core/GW_Mesh.cpp',             ...
    'gw/gw_core/GW_Vertex.cpp',       ...
    'gw/gw_geodesic/GW_GeodesicFace.cpp', ...                                              
    'gw/gw_geodesic/GW_GeodesicMesh.cpp',     ...                                 
    'gw/gw_geodesic/GW_GeodesicPath.cpp',         ...                       
    'gw/gw_geodesic/GW_GeodesicPoint.cpp',            ...           
    'gw/gw_geodesic/GW_TriangularInterpolation_Cubic.cpp', ...      
    'gw/gw_geodesic/GW_GeodesicVertex.cpp',                    ...  
    'gw/gw_geodesic/GW_TriangularInterpolation_Linear.cpp',      ...
    'gw/gw_geodesic/GW_TriangularInterpolation_Quadratic.cpp',  ...
};
str = 'mex ';
for i=1:length(files)
    str = [str rep files{i} ' '];
end
eval(str);

