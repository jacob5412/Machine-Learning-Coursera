t = [0:1:1080];
y1 = sind(t);
plot(t, y1,'b');
hold on;
y2 = cosd(t);
plot(t, y2, 'r');
xlabel('degrees');
ylabel('value');
legend('sin','cos');
title('Cos vs Sin Plot');
print -dpng 'cos_sin_polt.png';
close;
subplot(1, 2, 1); % divides plot into 1x2 grid, access first element
plot(t, y1,'b');
legend('sin');
xlabel('degrees');
ylabel('value');
subplot(1, 2, 2);
plot(t, y2, 'r');
legend('cos');
xlabel('degrees');
ylabel('value');
title('Cos vs Sin Plot');
axis([0 1080 -1 1]); % sets x range and y range

figure(2);
A = magic(5);
imagesc(A), colorbar, colormap gray;

figure(3);
A = magic(15);
imagesc(A), colorbar, colormap gray;