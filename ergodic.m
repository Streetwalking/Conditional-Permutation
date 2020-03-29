function y=ergodic(n)
    if n == 1
        y=[2,1];
    else
        ss=ergodic(n-1);
        ss(ss>n-1)=ss(ss>n-1)+2;
        y=[];
        for i = 1:size(ss,1)
            y=[y;[ss(i,1:n-1),n+1,n,ss(i,n:end)]];
            j=n-1;
            while j>0 && ss(i,j)>j+1
                y=[y;[ss(i,1:j-1),n+1,ss(i,j:2*(n-1)-j+1),n,ss(i,2*(n-1)-j+2:end)]];
                y=[y;[ss(i,1:j-1),n,ss(i,j:2*(n-1)-j+1),n+1,ss(i,2*(n-1)-j+2:end)]];
                j=j-1;
            end
        end
    end
    