//a is a collection of points
function lagrange(a)
    [row,col] = size(a);
    for i = 1:row
        l(i) = 1
    end
    for i = 1:row
        for j = 1:row
            if j~=i
                l(i) = l(i) * poly(a(j,1) , "x")/(a(i,1) - a(j,1))
            end
        end
    end
    
    out = []
    P = 0
    for i = 1:row
        out = l(i)*a(i,2);
        P = P + out;
    end
    
    disp(P);
endfunction
