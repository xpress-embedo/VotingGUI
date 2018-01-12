clear all;
clc;
filename = 'VotingList.xlsx';
[~, ~, raw] = xlsread(filename);

% for idx = 1:numel(raw)
%    if isnumeric(raw{idx})
%       raw{idx} = num2str(raw{idx});
%    end
% end
voters_name = raw(2:end, 2);
voters_id = raw(2:end, 3);

% Search ID in Cell
index = find([voters_id{:}] == 1234567890);
voters_name(index)

% Use the following method when searching a String
% D = {'1' '5' '3' '4' '2' '3' '4' '5' '2' '1'};
% index = find(strcmp(D, '5'));