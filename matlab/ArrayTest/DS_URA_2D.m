M=8;                 % ��Ԫ��
c=340;                         % ����
f = 3000;                      % �ź�Ƶ��
r = 0.0457;                      % ��Ԫ���
phi=linspace(0,2*pi,360);% �����źŽǶȷ�Χ

theta = 80*pi/180; %�̶�һ��������
gamma = (0:360/M:360-360/M)*pi/180;%��˷�λ��

tao = r*sin(theta)*cos(angle(1)-gamma)/c;     %��λ�� 0 < angle <360

phi0=317*pi/180;                      % ע�ӷ���
w=exp(1j*2*pi*f*r*cos(phi0-gamma)*sin(theta)/c);       % ��������
p = zeros(length(1:length(phi)),1);
for  j=1:length(phi)                                     % �Ƕ�ɨ��
    a=exp(-1j*2*pi*f*r*cos(phi(j)-gamma)*sin(theta)/c);% �����źŷ�������
    p(j)=sum(w.*a)/M;                                        % ��ʱ-���
end
% ��ͼ
figure;
plot(phi/pi*180,abs(p)),grid on
xlabel('degree')
ylabel('amplitude')
title('����Բ����ͼ')

figure,polarplot(phi,abs(p))