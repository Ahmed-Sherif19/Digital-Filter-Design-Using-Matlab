% input  : yt which is the time domain signal
% output : signal time domain plot
% return : N which is the number of samples of yt
function [N] = plot_time_domain(yt)
    N = length(yt)
    figure
    plot (0:N-1,yt) ;
    title('Audio Signal (Time Domain)') ;
    xlabel('N (Samples)') ;
    ylabel('Amplitude') ;
end
