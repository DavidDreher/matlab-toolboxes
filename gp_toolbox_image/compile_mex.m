fprintf('Mexing image toolbox');

% compile mex files
mex mex/perform_adaptive_filtering.cpp

disp('Done.');