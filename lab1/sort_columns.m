
function sortedTicket = sort_columns(ticket)
    sortedTicket = zeros(size(ticket));

    for col = 1:9
        inputArray = ticket(:, col);
        nonZeroElements = inputArray(inputArray ~= 0);
        sortedNonZeroElements = sort(nonZeroElements);
        sortedArray = zeros(size(inputArray));
        sortedArray(inputArray ~= 0) = sortedNonZeroElements;
        sortedTicket(:, col) = sortedArray;
    end
end
