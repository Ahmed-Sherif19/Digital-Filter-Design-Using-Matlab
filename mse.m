% input  : yt which is the First signal
%          xt which is the First signal
% return : mse value 
% if mse = NaN that mean an error happend as signals have different length
function [mse] = mse(yt, xt)
    mse = NaN;
    Ny = length(yt);
    Nx = length(xt);
    if (Ny == Nx)
        N = Ny;
        error = yt - xt;
        mse = (1/(N+1)) * sum(error.^2);
    end
end
