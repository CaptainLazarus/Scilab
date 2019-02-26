function newton(a)
    [row,col] = size(a)
    tab = []
    for i = 1:row
        tab(i,1) = a(i,2);
    end

    pol(1) = 1
    for i = 2:row
        pol(i) = pol(i-1)*poly(a(i-1,1) , "x");
    end
    
    for i = 2:row
        for j = 1:row-i+1
            tab(j,i) = ( tab(j,i-1) - tab(j+1,i-1) ) / ( a(j,1) - a(i + j-1,1) );
        end
    end
    
    out = []
    sum = 0
    for i = 1:row
        out(i) = tab(1,i)*pol(i);
        sum = sum + out(i);
    end
    disp(sum);
endfunction
