function status = close_InSI()

%% status = close_InSI():  Close all old sessions of InSI.
%
%% Input: None
%
%% Output: 
    % 1. status (bool) - users confirm or not True: Confirm; False:
    % Cancel
%
%% Require R2006A
%
% Author: Do Hai Son - AVITECH - VNU UET - VIETNAM
% Last Modified by Son 31-May-2023 18:54:13 

status = true;
open_warning = true;
all_fig = findall(groot, 'Type', 'figure');
for idx = 1:length(all_fig)
    fig = all_fig(idx);
    if(~isempty(strfind(fig.Tag, 'InSI')) || ...
       ~isempty(strfind(fig.Name, 'InSI')) || ...
       ~isempty(strfind(fig.Tag, 'loader'))) 
        tmp_0 = char(fig.Visible);
        tmp_1 = 0;
        if (strcmp(tmp_0, 'on'))
            tmp_1 = 1;
        end
        if (open_warning && tmp_1)
            open_warning = ~mode_questdlg();
            if open_warning
                status = false;
                return;
            end
        end
        close(fig);
    end
end

end