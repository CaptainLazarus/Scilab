function jacobi(a,b,n)
    [row,col] = size(a)
//    for i = 1:row
//        if a(i,i) == 0
//            disp("Not Possible");
//        end
//    end

    for i = 1:row
        c(i) = 0;
        d(i) = 0;
    end

    for k = 1:2*n
        
        for i = 1:row
            d(i) = 0;
        end
        
        for i = 1:row
            for j = 1:col
                if i ~= j 
                    c(i) = c(i) + c(j)*a(i,j);
                end
            end
            d(i) = (b(i) - c(i))/a(i,i);
        end
        disp("start")
        disp(d)
        disp(c)
        disp("end")
        c = d;
    end
endfunction
