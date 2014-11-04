function [out]=bitplanes(in,k)

out = zeros(size(in));
for i=k:8
    out=or(out,sxor(bitget(in,i)));
end

