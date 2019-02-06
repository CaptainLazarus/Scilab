function siedal(a,b,n)
    [row,col] = size(a)
//    for i = 1:row
//        if a(i,i) == 0
//            disp("Not Possible");
//        end
//    end

    for i = 1:row
        x(i) = 0;
    end

    for k = 1:3*n
        
        for i = 1:row
            x(i) = 0
            for j = 1:col
                if i ~= j 
                    x(i) = x(i) + x(j)*a(i,j);
                end
            end
            x(i) = (b(i) - x(i))/a(i,i);
        end
        disp(x)
    end
endfunction
