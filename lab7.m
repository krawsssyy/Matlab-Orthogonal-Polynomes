function lab7

    function L = Legendre(t, n)
        if n == 0
            L = 1;
        else
            if n == 1
                L = t;
            else
                L = (2*n + 1).*t.*Legendre(t, n - 1)/(n + 1) - n.*t.*Legendre(t, n - 2)/(n + 1);
            end
        end
    end

    function C1 = Cebisev1(t, n)
        if n == 0
            C1 = 1;
        else
            if n == 1
                C1 = t;
            else
                C1 = 2.*t.*Cebisev1(t, n - 1) - Cebisev1(t, n - 2);
            end
        end
    end

    function C2 = Cebisev2(t, n)
        if n == 0
            C2 = 1;
        else
            if n == 1
                C2 = 2.*t;
            else
                C2 = 2.*t.*Cebisev2(t, n - 1) - Cebisev2(t, n - 2);
            end
        end
    end

    function L = Laguerre(t, n)
        if n == 0
            L = 1;
        else
            if n == 1
                L = 1 - t;
            else
                L = (2*n + 1 - t).*Laguerre(t, n - 1)/(n + 1) - n.*Laguerre(t, n - 2)/(n + 1);
            end
        end
    end

    function H = Hermite(t, n)
        if n == 0
            H = 1;
        else
            if n == 1
                H = 2.*t;
            else
                H = 2.*t.*Hermite(t, n - 1) - 2*(n - 1).*Hermite(t, n - 2);
            end
        end
    end

    n = input('Introduceti gradul polinoamelor: ');
    
    t = -1: 0.1 :1;
    A = zeros(n);
    str = string(A);
    
    for i=1:n
        aux = "n="+string(i);
        str(i)=aux;
    end
    
    hold on;
    for i = 1 : n
        plot(t,Legendre(t, i));
    end
    legend(str, 'Location', 'northeast');
    title('Legendre');
    xlabel('t');
    ylabel('L(t,n)');
    
    figure;
    hold on;
    for i = 1 : n
        plot(t,Cebisev1(t, i));
    end
    legend(str, 'Location', 'northeast');
    title('Cebisev1');
    xlabel('t');
    ylabel('C1(t,n)');
    
    figure;
    hold on;
    for i = 1 : n
        plot(t,Cebisev2(t, i));
    end
    legend(str, 'Location', 'northeast');
    title('Cebisev2');
    xlabel('t');
    ylabel('C2(t,n)');
    
    figure;
    hold on;
    for i = 1 : n
        plot(t,Laguerre(t, i));
    end
    legend(str, 'Location', 'northeast');
    title('Laguerre');
    xlabel('t');
    ylabel('Lag(t,n)');
    
    figure;
    hold on;
    for i = 1 : n
        plot(t,Hermite(t, i));
    end
    legend(str, 'Location', 'northeast');
    title('Hermite');
    xlabel('t');
    ylabel('H(t,n)');
end

    

