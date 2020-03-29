function number=count_order(n)
    if n == 1
        number=[1];
    else
        temp=count_order(n-1);
        number=[[n:-1:2].*temp,0]+[0,[n-1:-1:1].*temp];
    end