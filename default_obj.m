clear;clc;
% addpath(fullfile('F:\Code\Images\GET JPEG\Jpeg_toolbox'));
tic;
QF=100;img_w=512;img_h=512;%��������
load('.\default_gray_jpeg_obj.mat');%���õ�JPEG�ṹ��,����JPEG������
quan_table=jpeg_qtable(QF);%������������QF����������,����JPEG������
default_gray_jpeg_obj.quant_tables{1} = quan_table;%�����������JPEG�ṹ��
default_gray_jpeg_obj.image_width = img_w;%����͸ߴ���JPEG�ṹ��
default_gray_jpeg_obj.image_height = img_h;
name=['default_gray_jpeg_obj_',num2str(QF),'.mat'];
save(name,'default_gray_jpeg_obj');
toc;
%--------------------------------------------------------------------------