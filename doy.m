%% CODE TO CALCULATE THE DAY OF THE YEAR FOR A GIVEN DATE
%script file: doy.m
% Purpose of the code
% This program calculates the day of the year corresponding to a specified
% date applying the switch and if branching and for loop
%   Record of entry
%   Date          Engineer         Description of code changes
%  08/04/22     Edem Doe Honu          Original Code
%      
% Define variables:
%   day -- Day(dd)
%   day_of_year -- Day of year
%   i -- loop index
%   leap_day -- Extra day for a leap year
%   month -- Month(mm)                               
%   year -- Year (yyyy)

%Request for day, month,and year to start calculation

disp('This program calculates the day of year given the specified date. ');
month = input('Please enter the specified month(1-12): ');
day = input('Please enter the specified day(1-31): ');
year = input('Please enter the specified year(yyyy): ');

%Checking for a leap year and adding extra day if necessary

if mod(year,400) == 0 % years divisible by 400 are leap years 
    leap_day = 1;
elseif mod(year,100)== 0 % years divisible by 100 are not leap years
    leap_day = 0;
elseif mod(year,4) == 0 % Otherwise every four year is a leap year
    leap_day = 1;
else
    leap_day = 0; % All other year are not leap years
end

% Determining the day of the year by adding the current day to the previous
% days in previous months

%Initializing

day_of_year = day;
for i = 1:month
    % Adding days in the month from january to last month
    switch(i)
        case {1,3,5,7,8,10,12}
            day_of_year = day_of_year + 31;  %For months with 31 days
        case {4,6,9,11}
            day_of_year = day_of_year + 30; %For months with 30 days
        case 2
            day_of_year = day_of_year + 28 + leap_day;
    end
end

% Display user output  
fprintf('The day of the year for date %2d/%2d/%4d is %d.\n' ,....
    day,month, year ,day_of_year);
