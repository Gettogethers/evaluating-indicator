function Precision = Precision(PredictOutputLable, TureLable)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% % % %  % % %Accuracy �˴���ʾ�йش˺�����ժҪ % % %
% Introduction: Input: PredictOutputLable ��������Ԥ���ǩ
%                      TureLable ������������ʵ��ǩ
%               Output��Precision �ϸ�ʱ����˵�����鷽��Ԥ��׼ȷ�ȸ�
% Write Time �� 21/02/23
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

