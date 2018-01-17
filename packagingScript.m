mainPath = fileparts(mfilename('fullpath'));
run(fullfile(mainPath, 'compile_all_mex.m'));
cd(mainPath);

mainFolders = dir('gp_toolbox_*');

protectSubFolders = {'tests'};

protectFolders = {};
for iF = 1:numel(mainFolders)
    for iP = 1:numel(protectSubFolders)
        if isfolder(protectSubFolders{iP})
            protectFolders = [protectFolders, fullfile(mainFolders(iF).name, protectSubFolders{iP})];
        end
    end
    cd(mainPath);
end