function MCC = MCC(PredictOutputLable, TureLable)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   MCC���ϵ��(Matthews correlation coefficient)
% % % %  % % %Accuracy �˴���ʾ�йش˺�����ժҪ % % %
% Introduction: Input: PredictOutputLable ��������Ԥ���ǩ
%                      TureLable ������������ʵ��ǩ
%               Output��Precision �ϸ�ʱ����˵�����鷽��Ԥ��׼ȷ�ȸ�
% Write Time : 21/02/23
% Author : Liu
% 
% ****************************************************************
[TureLableRow, ~] = size(TureLable);
PostiveIndex = find(TureLable == 1);
NegativeIndex = find(TureLable == 0);

TurePostive = find(TureLable(PostiveIndex, :) == PredictOutputLable(PostiveIndex, :));
TurePostiveNum = size(TurePostive, 1);%TP
FalseNegativeNum = size(PostiveIndex, 1) - TurePostiveNum;%FN

TureNegative = find(TureLable(NegativeIndex, :) == PredictOutputLable(NegativeIndex, :));
TureNegativeNum = size(TureNegative, 1);%TN
FalsePostiveNum = size(NegativeIndex, 1) - TureNegativeNum;%FP

index_1 = TurePostiveNum * TureNegativeNum - FalseNegativeNum * FalsePostiveNum;
index_2 = (TurePostiveNum + FalsePostiveNum) * (TurePostiveNum + FalseNegativeNum) * ...
    (TureNegativeNum + FalsePostiveNum) * (FalseNegativeNum + TureNegativeNum);

MCC = index_1 / index_2;

end

