function Accuracy = Accuracy(PredictOutputLable, TureLable)
% % % %  % % %Accuracy 此处显示有关此函数的摘要 % % %
% Introduction: Input: PredictOutputLable 分类器的预测标签
%                      TureLable 待测样本的真实标签
%               Output：Accuracy 较高时则能说明试验方法预测准确度高
% Write Time ： 18/10/5
% 
% 
% 
% ****************************************************************
[TureLableRow, ~] = size(TureLable);
PostiveIndex = find(TureLable == 1);
NegativeIndex = find(TureLable == 0);

TurePostive = find(TureLable(PostiveIndex, :) == PredictOutputLable(PostiveIndex, :));
TurePostiveNum = size(TurePostive, 1);%TP
% FalseNegativeNum = PostiveNum - TurePostiveNum;%FN

TureNegative = find(TureLable(NegativeIndex, :) == PredictOutputLable(NegativeIndex, :));
TureNegativeNum = size(TureNegative, 1);%TN
% FalsePostiveNum = NegativeNum - TureNegativeNum;%FP

Accuracy = (TurePostiveNum + TureNegativeNum)/ TureLableRow;
end

