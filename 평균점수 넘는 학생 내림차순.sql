-- �������̺��� ��� ���� �̻��� �л��̸� ����ϱ�

select*
from ����

select avg(����) �������
from ����

select �̸�, ����
from ����
where ���� >= (select avg(����) from ����)
order by ���� desc

select  �й�, �̸�
from ���� -- �ʵ���� ���� �ִ� ���̺��� ������ ��
union -- �ΰ��� ���̺��� �ϳ��� �̾� ���
select �����ڵ�, ������
from ����

-- union�� �ߺ��� �����ؼ� �ѹ��� �����
select  �й�, �̸�
from ����
union
select  �й�, �̸�
from ���� 

-- union all �ϸ� �ߺ� �����ؼ� ���
select  �й�, �̸�
from ����
union all
select  �й�, �̸�
from ����

