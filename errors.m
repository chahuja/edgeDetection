function [MSE,PSNR]=errors(ref,test)
[M N] = size(ref);
error = ref-test;
MSE = sum(sum(error .* error)) / (M * N);

if(MSE > 0)
PSNR = 10*log(255*255/MSE) / log(10);
else
PSNR = 99;
end
