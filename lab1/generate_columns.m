function columns = generate_columns(rows)
    columns = zeros(3, 9);

    for col = 1:9
        lowerBound = (col - 1) * 10 + 1;
        upperBound = col * 10;

        % Generate random numbers for the column
        colNumbers = randperm(upperBound - lowerBound + 1, 3) + lowerBound - 1;

        % Check if all elements are 0, if true, replace one element randomly
        if all(colNumbers == 0)
            colNumbers(randi(3)) = randperm(upperBound - lowerBound + 1, 1) + lowerBound - 1;
        end

        columns(:, col) = colNumbers;
    end

    columns = columns .* rows;
end

