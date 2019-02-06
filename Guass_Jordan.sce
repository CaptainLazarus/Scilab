
function Guass_Jordan(a,b)
[row,col] = size(a)
    for j = 1:col
        for i = 1:row
            if(i ~= j)
                b(i) = a(j,j)*b(i)/a(i,j) - b(j)
                a(i , :) = a(j,j)*a(i,:)/a(i,j) - a(j,:)
            end
        end
    end

c = []
for i = 1:row
    c(i) = b(i)/a(i,i)
end

disp(c)
endfunction
