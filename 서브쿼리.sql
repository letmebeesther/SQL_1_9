select*
from 성적
where  점수 >= (select AVG(점수) from 성적)

select* from 교수 -- 송재민 교수의 학과 코드 : 14
select* from 학과 -- 학과코드 14의 학과명 찾음 : 경영

select 학과코드 -- 찾으려고 하는 필드
from 교수
where 교수명 = '송재민' -- 찾으려고 하는 필드 중에 = ()과 같은것

select 학과명
from 학과
where 학과코드 = (select 학과코드
from 교수
where 교수명 = '송재민')

select *
from 교수

select *
from 학과

-- 남소연 학과명, 학과코드 찾기

select 학과코드
from 교수
where 교수명 = '남소연'

select 학과명
from 학과
where 학과코드 = (select 학과코드
from 교수
where 교수명 = '남소연')