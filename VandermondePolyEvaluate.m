function u=VandermondePolyEvaluate(z,A,B)

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

u=polyval(matlabA,z)/polyval(matlabB,z);

end
