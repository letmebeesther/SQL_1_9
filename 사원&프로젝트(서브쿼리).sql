use tempdb

create table ���
(�����ȣ char(4),
 ����� char(10),
 �μ��ڵ� char(3))
 insert ��� values('E001','�ֿ�ȣ','D01')
 insert ��� values('E002','��̿�','D02')
 insert ��� values('E003','������','D03')
 insert ��� values('E004','������','D01')
 insert ��� values('E005','����','D03')
 insert ��� values('E006','������','D04')

 create table ������Ʈ
 (������Ʈ�ڵ� char(4),
 ���μ� char(3),
 ���� char(4))
 insert ������Ʈ values('P001','D01','E001')
 insert ������Ʈ values('P001','D02','E001')
 insert ������Ʈ values('P002','D03','E005')
 insert ������Ʈ values('P003','D04','E006')
 select * from ���
 select * from ������Ʈ 

 --1�� ������ ����� ���� �μ� ����� ���
 select �μ��ڵ� -- D01
 from ���
 where ����� = '������'

 select �����
 from ���
 where �μ��ڵ� = ( select �μ��ڵ� -- D01
 from ���
 where ����� = '������')

 --2�� ������Ʈ p001�� �ϰ� �ִ� �μ������ �̸� ��� 
 select ���μ� -- D01, D02
 from ������Ʈ
 where ������Ʈ�ڵ� = 'P001'

 select �����
 from ���
 where �μ��ڵ� = (select ���μ�
 from ������Ʈ
 where ������Ʈ�ڵ� = 'P001') -- =�� �ϳ��� ���� ��,, �׷��� ������!

 select �����
 from ���
 where �μ��ڵ� in (select ���μ�
 from ������Ʈ
 where ������Ʈ�ڵ� = 'P001') -- in�� ������ ���� ��'

 -- join���� Ǯ��
 select �����
 from ������Ʈ join ���
 on ������Ʈ.���μ� = ���.�μ��ڵ�
 where ������Ʈ�ڵ� = 'P001'
