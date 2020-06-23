img432 = imread('./data/frame432.jpg');
img437 = imread('./data/frame437.jpg');
img439 = imread('./data/frame439.jpg');
[height, width, channel] = size(img439);

[predict_frame1,totalSAD1, MotionVector1, residual1] = FullSearch(img437,img439,8,8);
imwrite(predict_frame1, "full_search_predict_img439_8_8.jpg");
imwrite(residual1, "full_search_residual_predict_img439_8_8.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame1 = im2uint8(predict_frame1);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame1(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR1 = 10 * log10(255^2/MSE);
disp('Full Search with search range size 8 and macroblock size 8 PSNR:');
disp(PSNR1);
figure('Name','Full Search with search range size 8 and macroblock size 8','NumberTitle','off');
[X1,Y1] = meshgrid(1:8:size(img437,2),1:8:size(img437,1));
motion_x1 = zeros(size(X1,1),size(X1,2));
for i=1:size(X1,1)
    for j=1:size(X1,2)
        motion_x1(i,j) = MotionVector1(1,(i-1)*size(X1,2)+j);
    end
end
motion_y1 = zeros(size(Y1,1),size(Y1,2));
for i=1:size(Y1,1)
    for j=1:size(Y1,2)
        motion_y1(i,j) = MotionVector1(2,(i-1)*size(Y1,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X1(:),Y1(:),motion_x1(:),motion_y1(:));
hold off;
%%*************************************************************************
[predict_frame2,totalSAD2, MotionVector2, residual2] = FullSearch(img437,img439,8,16);
imwrite(predict_frame2, "full_search_predict_img439_8_16.jpg");
imwrite(residual2, "full_search_residual_predict_img439_8_16.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame2 = im2uint8(predict_frame2);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame2(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR2 = 10 * log10(255^2/MSE);
disp('Full Search with search range size 8 and macroblock size 16 PSNR:');
disp(PSNR2);
figure('Name','Full Search with search range size 8 and macroblock size 16','NumberTitle','off');
[X2,Y2] = meshgrid(1:16:size(img437,2),1:16:size(img437,1));
motion_x2 = zeros(size(X2,1),size(X2,2));
for i=1:size(X2,1)
    for j=1:size(X2,2)
        motion_x2(i,j) = MotionVector2(1,(i-1)*size(X2,2)+j);
    end
end
motion_y2 = zeros(size(Y2,1),size(Y2,2));
for i=1:size(Y2,1)
    for j=1:size(Y2,2)
        motion_y2(i,j) = MotionVector2(2,(i-1)*size(Y2,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X2(:),Y2(:),motion_x2(:),motion_y2(:));
hold off;
%%*************************************************************************
[predict_frame3,totalSAD3, MotionVector3, residual3] = FullSearch(img437,img439,16,8);
imwrite(predict_frame3, "full_search_predict_img439_16_8.jpg");
imwrite(residual3, "full_search_residual_predict_img439_16_8.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame3 = im2uint8(predict_frame3);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame3(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR3 = 10 * log10(255^2/MSE);
disp('Full Search with search range size 16 and macroblock size 8 PSNR:');
disp(PSNR3);
figure('Name','Full Search with search range size 16 and macroblock size 8','NumberTitle','off');
[X3,Y3] = meshgrid(1:8:size(img437,2),1:8:size(img437,1));
motion_x3 = zeros(size(X3,1),size(X3,2));
for i=1:size(X3,1)
    for j=1:size(X3,2)
        motion_x3(i,j) = MotionVector3(1,(i-1)*size(X3,2)+j);
    end
end
motion_y3 = zeros(size(Y3,1),size(Y3,2));
for i=1:size(Y3,1)
    for j=1:size(Y3,2)
        motion_y3(i,j) = MotionVector3(2,(i-1)*size(Y3,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X3(:),Y3(:),motion_x3(:),motion_y3(:));
hold off;
%%*************************************************************************
[predict_frame4,totalSAD4, MotionVector4, residual4] = FullSearch(img437,img439,16,16);
imwrite(predict_frame4, "full_search_predict_img439_16_16.jpg");
imwrite(residual4, "full_search_residual_predict_img439_16_16.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame4 = im2uint8(predict_frame4);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame4(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR4 = 10 * log10(255^2/MSE);
disp('Full Search with search range size 16 and macroblock size 16 PSNR:');
disp(PSNR4);
figure('Name','Full Search with search range size 16 and macroblock size 16','NumberTitle','off');
[X4,Y4] = meshgrid(1:16:size(img437,2),1:16:size(img437,1));
motion_x4 = zeros(size(X4,1),size(X4,2));
for i=1:size(X4,1)
    for j=1:size(X4,2)
        motion_x4(i,j) = MotionVector4(1,(i-1)*size(X4,2)+j);
    end
end
motion_y4 = zeros(size(Y4,1),size(Y4,2));
for i=1:size(Y4,1)
    for j=1:size(Y4,2)
        motion_y4(i,j) = MotionVector4(2,(i-1)*size(Y4,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X4(:),Y4(:),motion_x4(:),motion_y4(:));
hold off;
%%*************************************************************************
%%plot SAD
figure('Name','Full Search SAD','NumberTitle','off');
x_fullsearch = [0 1 2 3];
sad_fullsearch  = [totalSAD1 totalSAD2 totalSAD3 totalSAD4];
plot(x_fullsearch,sad_fullsearch);
title('Full Search Total SAD');
set(gca,'xtick', [0 1 2 3]);
set(gca,'xticklabel', {'p 8,macroblock 8*8' 'p 8,macroblock 16*16' 'p 16,macroblock 8*8' 'p 16,macroblock 16*16'});
%%plot PSNR
figure('Name','Full Search PSNR','NumberTitle','off');
x_fullsearch = [0 1 2 3];
psnr_fullsearch  = [PSNR1 PSNR2 PSNR3 PSNR4];
plot(x_fullsearch,psnr_fullsearch);
title('Full Search PSNR');
set(gca,'xtick', [0 1 2 3]);
set(gca,'xticklabel', {'p 8,macroblock 8*8' 'p 8,macroblock 16*16' 'p 16,macroblock 8*8' 'p 16,macroblock 16*16'});
%%*************************************************************************
%%*************************************************************************
%%*************************************************************************
%%Three Step
[predict_frame5,totalSAD5, MotionVector5, residual5] = ThreeStep(img437,img439,8,8);
imwrite(predict_frame5, "3step_predict_img439_8_8.jpg");
imwrite(residual5, "3step_residual_predict_img439_8_8.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame5 = im2uint8(predict_frame5);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame5(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR5 = 10 * log10(255^2/MSE);
disp('3 Step Search with search range size 8 and macroblock size 8 PSNR:');
disp(PSNR5);
figure('Name','3 Step Search with search range size 8 and macroblock size 8','NumberTitle','off');
[X5,Y5] = meshgrid(1:8:size(img437,2),1:8:size(img437,1));
motion_x5 = zeros(size(X5,1),size(X5,2));
for i=1:size(X5,1)
    for j=1:size(X5,2)
        motion_x5(i,j) = MotionVector5(1,(i-1)*size(X5,2)+j);
    end
end
motion_y5 = zeros(size(Y5,1),size(Y5,2));
for i=1:size(Y5,1)
    for j=1:size(Y5,2)
        motion_y5(i,j) = MotionVector5(2,(i-1)*size(Y5,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X5(:),Y5(:),motion_x5(:),motion_y5(:));
hold off;
%%*************************************************************************
[predict_frame6,totalSAD6, MotionVector6, residual6] = ThreeStep(img437,img439,8,16);
imwrite(predict_frame6, "3step_predict_img439_8_16.jpg");
imwrite(residual6, "3step_residual_predict_img439_8_16.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame6 = im2uint8(predict_frame6);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame6(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR6 = 10 * log10(255^2/MSE);
disp('3 Step Search with search range size 8 and macroblock size 16 PSNR:');
disp(PSNR6);
figure('Name','3 Step Search with search range size 8 and macroblock size 16','NumberTitle','off');
[X6,Y6] = meshgrid(1:16:size(img437,2),1:16:size(img437,1));
motion_x6 = zeros(size(X6,1),size(X6,2));
for i=1:size(X6,1)
    for j=1:size(X6,2)
        motion_x6(i,j) = MotionVector6(1,(i-1)*size(X6,2)+j);
    end
end
motion_y6 = zeros(size(Y6,1),size(Y6,2));
for i=1:size(Y6,1)
    for j=1:size(Y6,2)
        motion_y6(i,j) = MotionVector6(2,(i-1)*size(Y6,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X6(:),Y6(:),motion_x6(:),motion_y6(:));
hold off;
%%*************************************************************************
[predict_frame7,totalSAD7, MotionVector7, residual7] = ThreeStep(img437,img439,16,8);
imwrite(predict_frame7, "3step_predict_img439_16_8.jpg");
imwrite(residual7, "3step_residual_predict_img439_16_8.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame7 = im2uint8(predict_frame7);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame7(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR7 = 10 * log10(255^2/MSE);
disp('3 Step Search with search range size 16 and macroblock size 8 PSNR:');
disp(PSNR7);
figure('Name','3 Step Search with search range size 16 and macroblock size 8','NumberTitle','off');
[X7,Y7] = meshgrid(1:8:size(img437,2),1:8:size(img437,1));
motion_x7 = zeros(size(X7,1),size(X7,2));
for i=1:size(X7,1)
    for j=1:size(X7,2)
        motion_x7(i,j) = MotionVector7(1,(i-1)*size(X7,2)+j);
    end
end
motion_y7 = zeros(size(Y7,1),size(Y7,2));
for i=1:size(Y7,1)
    for j=1:size(Y7,2)
        motion_y7(i,j) = MotionVector7(2,(i-1)*size(Y7,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X7(:),Y7(:),motion_x7(:),motion_y7(:));
hold off;
%%*************************************************************************
[predict_frame8,totalSAD8, MotionVector8, residual8] = ThreeStep(img437,img439,16,16);
imwrite(predict_frame8, "3step_predict_img439_16_16.jpg");
imwrite(residual8, "3step_residual_predict_img439_16_16.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame8 = im2uint8(predict_frame8);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame8(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR8 = 10 * log10(255^2/MSE);
disp('3 Step Search with search range size 16 and macroblock size 16 PSNR:');
disp(PSNR8);
figure('Name','3 Step Search with search range size 16 and macroblock size 16','NumberTitle','off');
[X8,Y8] = meshgrid(1:16:size(img437,2),1:16:size(img437,1));
motion_x8 = zeros(size(X8,1),size(X8,2));
for i=1:size(X8,1)
    for j=1:size(X8,2)
        motion_x8(i,j) = MotionVector8(1,(i-1)*size(X8,2)+j);
    end
end
motion_y8 = zeros(size(Y8,1),size(Y8,2));
for i=1:size(Y8,1)
    for j=1:size(Y8,2)
        motion_y8(i,j) = MotionVector8(2,(i-1)*size(Y8,2)+j);
    end
end
imshow(img437);
hold on;
quiver(X8(:),Y8(:),motion_x8(:),motion_y8(:));
hold off;
%%*************************************************************************
%%plot SAD
figure('Name','3 Step Search SAD','NumberTitle','off');
x_3stepsearch = [0 1 2 3];
sad_3stepsearch  = [totalSAD5 totalSAD6 totalSAD7 totalSAD8];
plot(x_3stepsearch,sad_3stepsearch);
title('3Step Search Total SAD');
set(gca,'xtick', [0 1 2 3]);
set(gca,'xticklabel', {'p 8,macroblock 8*8' 'p 8,macroblock 16*16' 'p 16,macroblock 8*8' 'p 16,macroblock 16*16'});
%%plot PSNR
figure('Name','3 Step Search PSNR','NumberTitle','off');
x_3stepsearch = [0 1 2 3];
psnr_3stepsearch  = [PSNR5 PSNR6 PSNR7 PSNR8];
plot(x_3stepsearch,psnr_3stepsearch);
title('3Step Search PSNR');
set(gca,'xtick', [0 1 2 3]);
set(gca,'xticklabel', {'p 8,macroblock 8*8' 'p 8,macroblock 16*16' 'p 16,macroblock 8*8' 'p 16,macroblock 16*16'});
%%*************************************************************************
%%*************************************************************************
%%*************************************************************************
%%b 小題
[predict_frame9,totalSAD9, MotionVector9, residual9] = FullSearch(img432,img439,8,8);
imwrite(predict_frame9, "full_search_with_reference_432_predict_img439_8_8.jpg");
imwrite(residual9, "full_search_residual_with_reference_432_predict_img439_8_8.jpg");
%%PSNR*********************************************************************
SE = 0;
predict_frame9 = im2uint8(predict_frame9);
for rgb = 1:3
    for i = 1:height
        for j = 1:width
            SE = SE + (double(img439(i,j,rgb)) - double(predict_frame9(i,j,rgb)))^2;
        end
    end
end
MSE = SE/(height*width*3);
PSNR9 = 10 * log10(255^2/MSE);
disp("B小題,用432frame來當reference的psnr為:")
disp(PSNR9);