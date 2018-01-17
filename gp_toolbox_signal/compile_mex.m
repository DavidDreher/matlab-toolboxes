fprintf('Mexing signal toolbox');

% compile mex files
mex mex/perform_arithmetic_coding_mex.cpp mex/ac.cpp
warning('Disabled: ''perform_arithmetic_coding_escape.cpp''')
% mex mex/perform_arithmetic_coding_escape.cpp mex/coder/Arith.cpp mex/coder/BitIO.cpp mex/coder/IntCoding.cpp mex/coder/coder.cpp mex/coder/entropy.cpp mex/coder/global.cpp mex/coder/iHisto.cpp
mex mex/perform_arithmetic_coding_fixed.cpp mex/nr/arcmak.cpp mex/nr/arcode.cpp mex/nr/arcsum.cpp mex/nr/nrutil.cpp

disp('Done.');