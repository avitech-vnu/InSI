classdef NB_Misspecified_params
    %Params Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        % Parameters
        num_params = 5
        params = {'Num. transmitters', 'Num. receivers', 'True Channel order', 'Misspecified Channel order', 'Unknown data blocks'}
        notations = {'Nt', 'Nr', 'Ltr', 'Lpt', 'K'}
        tooltips = {}
        % Type of the UIControl: edit_text   = 1
        %                        popup_menu  = 2
        %                        button      = 3
        params_type = [1, 1, 1, 1, 1, 1]
        values = {3, 2, 5, 4, 2}
        default_values = {3, 2, 5, 4, 2}
        
        % Default SNR and Monte
        default_Monte = 10
        default_SNR = '-10:5:20'

        % Output
        % Type of the outputs: SER Sig = 1
        %                      BER Sig = 2
        %                      MSE Cha = 3
%         outputs = [1]
%         default_output = 1
        
        % Figure
        sys_model = 'nonblind_model.png'
        title     = {'NB-Misspecified'}
        xlabel    = {'SNR (dB)'}
        ylabel    = {'CRB (dB)'}
        trigger   = false 
        position
        linewidth = 1
        color     = 'k'
        
        % Triggers/Flags
        has_inter     = [true, true, false, false, false]
        rect = {}
        rect_position = {[5 290 60 60], [1025 620 60 60], 0, 0, 0}
        rect_linewidth = {2, 2, 0, 0, 0}
        rect_color     = {'b', 'r', 'b', 'b', 'b'}

        % Reference website
        web_url = 'https://ieeexplore.ieee.org/abstract/document/9537597'
    end
    
    methods (Access = private)
        
    end

end