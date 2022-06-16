  % Script file : satellite_orbit.m
%
% Purpose of the code
% This program plots the orbit of a satellite given the eccentricity of the
% orbit and size parameter of the orbit.

%   Record of entry
%   Date          Engineer         Description of code changes
%  08/04/22     Edem Doe Honu          Original Code
%  
% Definition of terms 
% r = distance of the satellite from the center of the earth
% theta = angle of the satellite from the center the earth
% p = size paremater of the orbit
% epsilon = eccentricity of the orbit
%  
% Prompt user for the value of the size parameter
 p = input('please enter the value of size parameter:\n');
disp(['The value of size parameter is ',num2str(p),' km']);

%prompt user for the value of eccentricity
epsilon = input('please enter the value of eccentricity:\n');
fprintf('The value of the eccentricity is %d \n',epsilon);

% Range of angles of satellite from the center of the earth
theta = linspace(0,2*pi,41); 

% Calculating the distance from the center of the earth
r = p/1-epsilon *(cos(theta));

% Plotting the sattelite orbit
polar(theta,r,'bo-');
title('\bfThe orbital plotting of satellite of distance against angle\it{\theta}')



  