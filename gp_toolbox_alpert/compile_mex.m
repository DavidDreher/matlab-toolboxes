fprintf('Mexing alpert toolbox');

% compile mex file
mex mex/perform_moment_transform.cpp mex/perform_moment_transform_mex.cpp

disp('Done.');