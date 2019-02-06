function Guassian_Elimination(a,b)
[row,col] = size(a)

for j = 1:row-1  
   for i = j+1:row
        b(i) = a(j,j)*(b(i)/a(i,j)) - b(j);
        a(i,:) = a(j,j)*(a(i,:)/a(i,j)) - a(j,:);
    end
end

c = b;
c(3) = b(3)/a(3,3)

for i = row-1:-1:1
    for j = col:-1:i+1
        c(i) = (c(i) - (c(j)*a(i,j))) /a(i,i);
    end
end
disp(c);
endfunction
