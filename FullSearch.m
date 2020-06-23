function [Predict_frame, totalSAD, MotionVector, residual] = FullSearch(Reference_frame,Target_frame,p,macroblock_size)

[height, width, rgb] = size(Target_frame);
Target_frame = im2double(Target_frame);
Reference_frame = im2double(Reference_frame);
%%predict frame
Predict_frame = zeros(height,width,3);
%%motion vector琌overlapping┮Τ(height-macroblock_size+1)*(width-macroblock_size+1)ê或
%MotionVector = zeros(2,(height-macroblock_size+1)*(width-macroblock_size+1));
%%motion vector琌non overlapping┮Τheight*width/(macroblock_size^2)ê或
MotionVector = zeros(2,(height*width)/(macroblock_size^2));
index = 1;
totalSAD = 0;
%y  row(height), x  column(width)
startTime = cputime; % start time
for y = 1:macroblock_size:height-macroblock_size+1
    for x = 1:macroblock_size:width-macroblock_size+1
        %%﹍てsearch rangeず–BLOCKSADㄏㄤdouble程计(磷Τㄇ⊿衡挡狦minSADウ)
        %SAD = ones(2*p+1,2*p+1)*realmax;
        %%﹍てminSADㄏㄤdouble程计
        minSAD = realmax;
        %%﹍てMotionVector程オàêBLOCK秖甅ノ量竡材80畒夹╰参
        MotionVector(1, index) = (x-p)-x;
        MotionVector(2, index) = (y-p)-y;
        %ノoverlappingよΑsearch rangeいтSAD程BLOCK
        for i = -p:p
            for j = -p:p
                y_insearch = y+i;
                x_insearch = x+j;
                sad_value = 0;
                if y_insearch < 1 || y_insearch > height-macroblock_size+1 || x_insearch < 1 || x_insearch > width-macroblock_size+1
                    continue;
                else
                    for a = 1:3
                        for b = 1:macroblock_size
                            for c = 1:macroblock_size
                                sad_value = sad_value + abs(Reference_frame(y_insearch+b-1,x_insearch+c-1,a) - Target_frame(y+b-1,x+c-1,a));
                            end
                        end
                    end
                end
                %SAD(i+p+1,j+p+1) = sad_value;
                if sad_value < minSAD
                    minSAD = sad_value;
                    MotionVector(1,index) = x+j-x;
                    MotionVector(2,index) = y+i-y;
                end
            end
        end
       
        Predict_frame(y:y+macroblock_size-1,x:x+macroblock_size-1,:) = Reference_frame(y+MotionVector(2,index):y+MotionVector(2,index)+macroblock_size-1,x+MotionVector(1,index):x+MotionVector(1,index)+macroblock_size-1,:);
        index = index + 1;
        totalSAD = totalSAD + minSAD;
    end
end
nowtime = cputime;
time = nowtime - startTime;
residual = sum(abs(Target_frame-Predict_frame),3);
fprintf('Full Search (range p=%d , block=%dx%d ) \n', p, macroblock_size, macroblock_size);
fprintf('Time : %g\n',time);
end

