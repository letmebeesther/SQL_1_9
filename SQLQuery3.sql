-- 7장 3번 : 졸작평가 테이블에서 박보검학생과 같은 조 학생들을 출력하시오.
select*
from 졸작평가

select 조이름 -- 베스트
from 졸작평가
where 이름 = '박보검'

select 학번, 이름, 조이름
from 졸작평가
where 조이름 in (select 조이름
from 졸작평가
where 이름 = '박보검')
order by 학번 

-- 7장 4번 : 책 테이블과 출판사 테이블을 기반으로 서울에 위치한 출판사들이 출판하는 책들의 책제목과 가격을 출력하시오.
select*
from 책

select*
from 출판사

select 출판사코드
from 출판사
where 주소 like '서울%'

-- 서브쿼리로 푼거
select 책제목,가격
from 책
where 출판사코드 in (select 출판사코드
from 출판사
where 주소 like '서울%')

-- join으로 푼거 : join은 on과 함께 써야함
 select 책제목,가격
 from 책 join 출판사
 on 책.출판사코드 = 출판사.출판사코드
 where 주소 like '서울%' -- like문 + 앞글자%. %는 뒷글자 아무거나