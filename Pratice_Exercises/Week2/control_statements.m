v = zeros(10, 1);

for i = 1:10
    v(i) = 2^i;
end
fprintf("%d\n",v);

i = 1;
while(i <= 5)
    v(i) = 100;
    i = i + 1;
end
fprintf("%d\n", v);

i = 1;
while true
    v(i) = 999
    i = i + 1
    if i == 6
        break
    end
end
fprintf("%d\n", v);

v(1) = 2;
if v(1) == 1
    disp('the value is one');
elseif v(1) == 2
    disp('the value is two');
else
    disp('the value is not one or two');
end

