function y = f(x)
    y = x^3 - 2*x^2 - 3*x - 1
endfunction

function f1(a,b)
    c = b - f(b)*(a-b)/(f(a)-f(b))
    if f(c) < 10^-5 then
        disp(c)
        break
    end
    if f(c)*f(a) < 0 then
        f1(a,c)
    else 
        f1(b,c)
    end
endfunction
 
