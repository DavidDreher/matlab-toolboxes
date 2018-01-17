mainPath = fileparts(mfilename('fullpath'));
cd(mainPath);

mainFolders = dir('gp_toolbox_*');

for iF = 1:numel(mainFolders)
    cd(mainFolders(iF).name);
    if isfile('compile_mex.m')
        run('compile_mex.m')
    end
    cd(mainPath);
end