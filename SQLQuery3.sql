-- 7�� 3�� : ������ ���̺��� �ں����л��� ���� �� �л����� ����Ͻÿ�.
select*
from ������

select ���̸� -- ����Ʈ
from ������
where �̸� = '�ں���'

select �й�, �̸�, ���̸�
from ������
where ���̸� in (select ���̸�
from ������
where �̸� = '�ں���')
order by �й� 

-- 7�� 4�� : å ���̺�� ���ǻ� ���̺��� ������� ���￡ ��ġ�� ���ǻ���� �����ϴ� å���� å����� ������ ����Ͻÿ�.
select*
from å

select*
from ���ǻ�

select ���ǻ��ڵ�
from ���ǻ�
where �ּ� like '����%'

-- ���������� Ǭ��
select å����,����
from å
where ���ǻ��ڵ� in (select ���ǻ��ڵ�
from ���ǻ�
where �ּ� like '����%')

-- join���� Ǭ�� : join�� on�� �Բ� �����
 select å����,����
 from å join ���ǻ�
 on å.���ǻ��ڵ� = ���ǻ�.���ǻ��ڵ�
 where �ּ� like '����%' -- like�� + �ձ���%. %�� �ޱ��� �ƹ��ų�