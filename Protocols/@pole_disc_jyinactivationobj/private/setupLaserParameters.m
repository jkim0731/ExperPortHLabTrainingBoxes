
%% stimulation parameters
% stim_freq=0, 20, 50
% in ms
possible_stim_delay = [0];
stim_pulse_dur = dur;
stimdur=dur;
stim_pulse_dur_in_ms=stim_pulse_dur;
if stim_freq==0
    stim_num_pulse = [1];
    stim_pulse_ISI=5; % since there is only one pulse
elseif stim_freq==-1
    stim_num_pulse=1;
    stim_pulse_ISI=5;
else
    stim_num_pulse = floor(stim_pulse_dur*stim_freq/1000);
    stim_pulse_dur_in_ms=5;
    stim_pulse_ISI=1000/stim_freq-stim_pulse_dur_in_ms;
end;

testfreq=testfreq;

% in volt
possible_stim_xGalvo_pos = [0];
possible_stim_yGalvo_pos = [0];
    
% in volt (between 0 and 5)
possible_stim_AOM_power = [5];

pulse_width_in_ms=5;


%% define the stimulation attributes


stim_delay_in_ms  =  possible_stim_delay(randsample(length(possible_stim_delay),1));

% stim_num_pulse    =  possible_stim_num_pulse(randsample(length(possible_stim_num_pulse),1));
% stim_pulse_ISI    =  possible_stim_pulse_ISI(randsample(length(possible_stim_pulse_ISI),1));
% stim_pulse_dur_in_ms   =  possible_stim_pulse_dur(randsample(length(possible_stim_pulse_dur),1));

stim_xGalvo_pos   =  possible_stim_xGalvo_pos(randsample(length(possible_stim_xGalvo_pos),1));
stim_yGalvo_pos   =  possible_stim_yGalvo_pos(randsample(length(possible_stim_yGalvo_pos),1));

stim_AOM_power    =  possible_stim_AOM_power(randsample(length(possible_stim_AOM_power),1));

% stim_dur_in_ms = (stim_pulse_dur_in_ms+stim_pulse_ISI)*stim_num_pulse;
