function [max_e1, max_e2, max_cor, Rcor] = ...
                            fun_lecture5_max_cor_electrodes(data)
% function takes 1 input: dataset of size n x m where n is number of
% timepoints and m is number of electrodes
%
% function computes correlation for each pair of electrodes and returns
% the pair of electrodes, whose time courses are maximally correlated. 
%
% Outputs:
%           max_e1 :
%           max_e2 : pair of maximally correlated electrodes
%           max_cor: cor value for max_e1 and max_e2
%           R_cor  : entire correlation matrix for all eles
%



% initialize useful variables

n_eles  = size(data, 2); % check that number of electrodes is dimension 2
Rcor    = nan(n_eles);   % preallocation of corr matrix




% ################## you need to write this piece #################

% run correlation using nested loop
%       - fill in matrix Rcor
%       - do not compute correlation for same row and column Rcor(1, 1) for
%       example, because correlation with itself is always 1
%       - compute correlation for Rcor(i, j), but assign the mirroring
%       element Rcor(j, i) to nan


% find indices of max correlation
%       - find the max per each column
%       - find the max in the vector of max per column
%       - get indices of pair of row and column with max correlation


% output to command line
%       - print 'Data contains high correlations' if max correlation >= 0.3
%       - otherwise print 'No high correlations were found'
%       - if max correlation < 0.3, set max_e1, max_e2, max_cor to nan


