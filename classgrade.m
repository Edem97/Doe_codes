function [total,average] = classgrade(number)  
number = input('Enter a number: ');
if number <=0
    disp('invalid argument')
    total = 0;
    average = 0;
end
total = 0;
gradecounter = 1;
while gradecounter <= number
    grade = input('Enter grade: ');
    total = total + grade;
    gradecounter = gradecounter + 1;
end
average = total/number
end

function[Celsius]=
