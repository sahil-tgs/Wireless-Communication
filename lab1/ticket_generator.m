function tambola_ticket_generator()
    clc;
    clear all;
    close all;

    % Module 1: Generate rows
    rows = generate_rows();
11111111111111
    % Module 2: Generate columns
    ticket = generate_columns(rows);

    % Module 3: Sort columns
    sortedTicket = sort_columns(ticket);

    % Module 4: Replace zeros
    finalTicket = replace_zeros(sortedTicket);

    disp('Tambola Ticket:');

    % Display the numeric matrix with spaces
    for row = 1:3
        fprintf('%4s %4s %4s %4s %4s %4s %4s %4s %4s\n', finalTicket{row, :});
    end
end

