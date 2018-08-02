M=8;                 % ��Ԫ��
c=340;                         % ����
% f = 2125;                      % �ź�Ƶ��
r = 0.0457;                      % ��Ԫ���
phi=linspace(0,2*pi,360);% �����źŷ�λ�Ƿ�Χ


gamma = (0:360/M:360-360/M)*pi/180;%��˷�λ��


phi0=130*pi/180;                      % ע�ӷ���
theta0 = 80*pi/180;


p = zeros(length(1:length(phi)),length(300:100:4000));
for f = 300:10:5000
    w=exp(1j*2*pi*f*r*cos(phi0-gamma)*sin(theta0)/c);       % ��������
    for  j=1:length(phi)                                     % �Ƕ�ɨ��
        a=exp(-1j*2*pi*f*r*cos(phi(j)-gamma)*sin(theta0)/c);% �����źŷ�������
        p(j,f)=sum(a.*w)/M;                                        % ��ʱ-���
    end
end
% ��ͼ
% figure;
% plot(phi/pi*180,abs(p)),grid on
% xlabel('degree')
% ylabel('amplitude')
% title('����Բ����ͼ')
figure,mesh(abs(p))
