function [zA,zB]=VandermondePolyZeros(A,B)

if size(A,1)>size(A,2)
    matlabA=fliplr(A.');
else
    matlabA=fliplr(A);
end

if size(B,1)>size(B,2)
    matlabB=fliplr(B.');
else
    matlabB=fliplr(B);
end

zA=roots(matlabA);
zB=roots(matlabB);

end