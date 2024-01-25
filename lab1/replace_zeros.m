function replacedTicket = replace_zeros(ticket)
    replacedTicket = cell(3, 9);

    for row = 1:3
        inputArray = ticket(row, :);
        charArray = num2cell(inputArray);

        % Convert each element to string
        strArray = cellfun(@num2str, charArray, 'UniformOutput', false);

        % Replace standalone zeros with '__'
        replacedCharArray = cellfun(@(x) regexprep(x, '(?<!\d)0(?!\d)', '__'), strArray, 'UniformOutput', false);

        replacedTicket(row, :) = replacedCharArray;
    end
end

