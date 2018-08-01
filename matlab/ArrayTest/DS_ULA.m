M=8;                 % ��Ԫ��
c=340;                         % ����
f = 2125;                      % �ź�Ƶ��
d = 0.08;                      % ��Ԫ���
theta=linspace(-pi/2,pi/2,200);% �����źŽǶȷ�Χ
theta0=30*pi/180;                      % ע�ӷ���
w=exp(1j*2*pi*f*sin(theta0)*[0:M-1]'*d/c);       % ��������
p = zeros(length(1:length(theta)),1);
for  j=1:length(theta)                                     % �Ƕ�ɨ��
    a=exp(-1j*2*pi*f*sin(theta(j))*[0:M-1]'*d/c);% �����źŷ�������
    p(j)=sum(w.*a)/M;                                        % ��ʱ-���
end
% ��ͼ
figure;
plot(theta/pi*180,abs(p)),grid on
xlabel('degree')
ylabel('amplitude')
title('8��Ԫ����������ͼ')