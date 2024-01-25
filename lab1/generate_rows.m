
function rows = generate_rows()
    rows = zeros(3, 9);

    for i = 1:3
        fl = 1;
        while (fl == 1)
            aa = round(rand(1, 9));
            if (sum(aa) == 5)
                fl = 0;
            end
        end
        rows(i, :) = aa;
    end
end
