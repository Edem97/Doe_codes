   %Script file : test_runstats.m

%Initially reset running time
[ave std] = runstats('reset');

%Propmt for the number of values in the data set
n = input('Please enter the number of values in data set: ');

% Call for the input values
for ii = 1:n
    % Prompt user for the next value 
    str = ['Enter value ' int2str(ii) ' : '];
    x = input(str);
    
    % Get running statistics
    [ave std] = runstats(x);
    
    % Display running statistics
    fprintf('\nAverage = %8.4f; Std dev = %8.4f\n',ave,std);
end