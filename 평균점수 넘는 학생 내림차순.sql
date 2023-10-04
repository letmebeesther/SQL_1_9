-- 성적테이블에서 평균 점수 이상의 학생이름 출력하기

select*
from 성적

select avg(점수) 평균점수
from 성적

select 이름, 점수
from 성적
where 점수 >= (select avg(점수) from 성적)
order by 점수 desc

select  학번, 이름
from 성적 -- 필드명은 위에 있는 테이블의 명으로 함
union -- 두개의 테이블을 하나로 이어 출력
select 교수코드, 교수명
from 교수

-- union은 중복은 제거해서 한번만 출력함
select  학번, 이름
from 성적
union
select  학번, 이름
from 성적 

-- union all 하면 중복 포함해서 출력
select  학번, 이름
from 성적
union all
select  학번, 이름
from 성적

