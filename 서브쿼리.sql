select*
from ����
where  ���� >= (select AVG(����) from ����)

select* from ���� -- ����� ������ �а� �ڵ� : 14
select* from �а� -- �а��ڵ� 14�� �а��� ã�� : �濵

select �а��ڵ� -- ã������ �ϴ� �ʵ�
from ����
where ������ = '�����' -- ã������ �ϴ� �ʵ� �߿� = ()�� ������

select �а���
from �а�
where �а��ڵ� = (select �а��ڵ�
from ����
where ������ = '�����')

select *
from ����

select *
from �а�

-- ���ҿ� �а���, �а��ڵ� ã��

select �а��ڵ�
from ����
where ������ = '���ҿ�'

select �а���
from �а�
where �а��ڵ� = (select �а��ڵ�
from ����
where ������ = '���ҿ�')