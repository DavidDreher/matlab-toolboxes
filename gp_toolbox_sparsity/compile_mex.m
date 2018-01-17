fprintf('Mexing sparsity toolbox');

% Orthogonal matching pursuit
mex mex/mat_omp.c mex/perform_omp.c mex/invert.c mex/matrix_vector.c -output perform_omp_mex

disp('Done.');