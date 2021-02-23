function Precision = Precision(PredictOutputLable, TureLable)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
% % % %  % % %Accuracy 此处显示有关此函数的摘要 % % %
% Introduction: Input: PredictOutputLable 分类器的预测标签
%                      TureLable 待测样本的真实标签
%               Output：Precision 较高时则能说明试验方法预测准确度高
% Write Time ： 21/02/23
% Author : Liu
% 
% ****************************************************************
[TureLableRow, ~] = size(TureLable);
PostiveIndex = find(TureLable == 1);
NegativeIndex = find(TureLable == 0);

TurePostive = find(TureLable(PostiveIndex, :) == PredictOutputLable(PostiveIndex, :));
TurePostiveNum = size(TurePostive, 1);%TP
% FalseNegativeNum = PostiveIndex - TurePostiveNum;%FN

TureNegative = find(TureLable(NegativeIndex, :) == PredictOutputLable(NegativeIndex, :));
TureNegativeNum = size(TureNegative, 1);%TN
FalsePostiveNum = size(NegativeIndex, 1) - TureNegativeNum;%FP

Precision = TurePostiveNum / (size(PostiveIndex, 1) + FalsePostiveNum);

end

