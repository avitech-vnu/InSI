classdef B_TSML_params
    %Params Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        % Parameters
        num_params = 5
        params = {'N_bits', 'Sensors', 'ChL', 'ChType', 'Modulation'}
        tooltips = {}
        % Type of the UIControl: edit_text   = 1
        %                        popup_menu  = 2
        %                        button      = 3
        params_type = [1, 1, 1, 2, 2, 1]
        values = {100, 4, 4, {'Real', 'Complex', 'Parametric', 'Input'}, {'Binary', 'QPSK', '4-QAM', '16-QAM', '64-QAM', '128-QAM', '256-QAM'}}
        default_values = {100, 4, 4, 2, 2}
        
        % Default SNR and Monte
        default_Monte = 10
        default_SNR = '-10:5:20'

        % Output
        % Output
        % Type of the outputs: SER Sig = 1
        %                      BER Sig = 2
        %                      MSE Sig = 3
        %                      MSE Cha = 4
        outputs = [4]
        default_output = 4
        
        % Figure
        sys_model = 'Default.png'
        title     = {'B-TSML'}
        xlabel    = {'SNR (dB)', 'SNR (dB)', 'SNR (dB)', 'SNR (dB)'}
        ylabel    = {'SER (dB)', 'BER (dB)', 'MSE Signal (dB)', 'MSE Channel (dB)'}
        trigger   = false 
        position
        linewidth = 1
        color     = 'k'
        
        % Triggers/Flags
        has_inter     = [true, false, false, false, false]
        rect = {}
        rect_position = {[1 193 105 65], 0, 0, 0, [810 645 30 30]}
        rect_linewidth = {2, 0, 0, 0, 2}
        rect_color     = {'b', 'b', 'b', 'b', 'r'}        
    end
    
    methods (Access = private)
        
    end

end

