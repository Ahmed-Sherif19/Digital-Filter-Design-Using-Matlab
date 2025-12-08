% input  : yt which is the time domain signal
%          Fs which is the sampling frequency of the audio file 
%          if k is left blank or set to 1 it will plot the figure if k is set to any value except 1 it won't plot 
% output : signal frequency domain plot
% return : yf which is the fft of yt
function [yf,N] = plot_frequency_domain(yt, Fs, k)
    if nargin < 3
        k = 1;
    end
    N = length(yt);
    yf = abs(fft(yt));
    f = (0:N-1)*(Fs/N);
    if k
        figure
        plot(f(1:N/2), yf(1:N/2));
        title('Magnitude Spectrum of Audio Signal (Frequency Domain)');
        xlabel('Frequency (Hz)');
        ylabel('Amplitude');
        grid on
    end
end
