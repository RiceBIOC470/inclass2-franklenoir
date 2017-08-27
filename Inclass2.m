%% Inclass assignment 2 - Walter Frank Lenoir 


% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if rem(ii,2) == 1
        disp(ii);
    end
end
% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

for ii = 1:2:20
    disp(ii);
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

ii = 1:2:20
disp(num2str(ii));


%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

ii = 1:100;
z = ii.*ii;

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

ii = 1:100;
z = sum(ii);

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

z = sqrt(xx(:,1).^2 + xx(:,2).^2);

% d. what is the formula in c computing?

%Pythagorean Theorem

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

time_points = 0:0.01:4*pi;

figure;
plot(time_points, sin(time_points),'r--');
hold on;
plot(time_points, cos(time_points),'b-');

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 
figure;
ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);
plot(ax1,time_points, sin(time_points),'r--');
plot(ax2,time_points, cos(time_points),'b-');
%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
figure;
plot(xy_dat(:,1),xy_dat(:,2));
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

figure;
scatter(xy_dat(:,1),xy_dat(:,2),24,fluor,'filled');