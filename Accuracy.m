function Accuracy = Accuracy(PredictOutputLable, TureLable)
% % % %  % % %Accuracy �˴���ʾ�йش˺�����ժҪ % % %
% Introduction: Input: PredictOutputLable ��������Ԥ���ǩ
%                      TureLable ������������ʵ��ǩ
%               Output��Accuracy �ϸ�ʱ����˵�����鷽��Ԥ��׼ȷ�ȸ�
% Write Time �� 18/10/5
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

