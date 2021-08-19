clear;clc;
% addpath(fullfile('F:\Code\Images\GET JPEG\Jpeg_toolbox'));
tic;
QF=100;img_w=512;img_h=512;%参数设置
load('.\default_gray_jpeg_obj.mat');%公用的JPEG结构体,来自JPEG工具箱
quan_table=jpeg_qtable(QF);%根据质量因子QF产生量化表,来自JPEG工具箱
default_gray_jpeg_obj.quant_tables{1} = quan_table;%将量化表代入JPEG结构体
default_gray_jpeg_obj.image_width = img_w;%讲宽和高代入JPEG结构体
default_gray_jpeg_obj.image_height = img_h;
name=['default_gray_jpeg_obj_',num2str(QF),'.mat'];
save(name,'default_gray_jpeg_obj');
toc;
%--------------------------------------------------------------------------