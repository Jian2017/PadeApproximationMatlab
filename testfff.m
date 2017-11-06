function u=testfff(zNpoints, c, z)

u=z;

for i=1:size(z,1)
    for j=1:size(z,2)
        u(i,j)= analytical_continued(zNpoints,c,z(i,j));    
    end
end

return 