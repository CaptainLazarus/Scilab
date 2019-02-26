function y = f(x)
    y = x^2
endfunction

function f1(a)
    c = a - (f(a)/numderivative(f,a))
    if f(c) < 10^-5 then
        disp(c)
        break
    else
        f1(c)
    end 
endfunction
