clear;
formatSpec = '%f %f';
sizeA = [2 inf];

figure(1);
hold on;
fileId = fopen("res0.1.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.2.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.3.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.4.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.5.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.6.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.7.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.8.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.9.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
xlabel('start window, n')
ylabel('lost packets, %')
legend('lambda = 0,1','lambda = 0,2','lambda = 0,3','lambda = 0,4','lambda = 0,5','lambda = 0,6','lambda = 0,7','lambda = 0,8','lambda = 0,9')

figure(2);
hold on;
fileId = fopen("res0.1.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.2.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.3.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.4.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.5.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.6.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.7.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.8.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
fileId = fopen("res0.9.txt",'r');
A = fscanf(fileId,formatSpec,sizeA);
plot(A(1,:), A(2,:));
ylim([0 10])
xlabel('start window, n')
ylabel('lost packets, %')
legend('lambda = 0,1','lambda = 0,2','lambda = 0,3','lambda = 0,4','lambda = 0,5','lambda = 0,6','lambda = 0,7','lambda = 0,8','lambda = 0,9')
