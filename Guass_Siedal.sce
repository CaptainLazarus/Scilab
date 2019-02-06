
function jacobi(a,b,n)
    [row,col] = size(a)
//    for i = 1:row
//        if a(i,i) == 0
//            disp("Not Possible");
//        end
//    end

    for i = 1:row
        c(i) = 0;
    end

    for k = 1:15*n
        for i = 1:row
            for j = 1:col
                if i ~= j 
                    c(i) = c(i) + c(j)*a(i,j);
                end
            end
            c(i) = (b(i) - c(i))/a(i,i);
        end
        disp(c)
    end
endfunction
