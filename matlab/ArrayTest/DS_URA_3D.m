M=8;                 % ��Ԫ��
c=340;                         % ����
f = 2125;                      % �ź�Ƶ��
r = 0.08;                      % ��Ԫ���
phi=linspace(0,2*pi,360);% �����źŷ�λ�Ƿ�Χ

theta = linspace(0,pi/2,90);% �����źŸ����Ƿ�Χ

gamma = (0:360/M:360-360/M)*pi/180;%��˷�λ��


phi0=130*pi/180;                      % ע�ӷ���
theta0 = 80*pi/180;

w=exp(1j*2*pi*f*r*cos(phi0-gamma)*sin(theta0)/c);       % ��������
p = zeros(length(1:length(phi)),length(theta));
for i = 1:length(theta)
    for  j=1:length(phi)                                     % �Ƕ�ɨ��
        a=exp(-1j*2*pi*f*r*cos(phi(j)-gamma)*sin(theta(i))/c);% �����źŷ�������
        p(j,i)=sum(a.*w)/M;                                        % ��ʱ-���
    end
end
% ��ͼ
% figure;
% plot(phi/pi*180,abs(p)),grid on
% xlabel('degree')
% ylabel('amplitude')
% title('����Բ����ͼ')
figure,mesh(abs(p))
