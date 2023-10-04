use tempdb

create table 사원
(사원번호 char(4),
 사원명 char(10),
 부서코드 char(3))
 insert 사원 values('E001','최용호','D01')
 insert 사원 values('E002','김미영','D02')
 insert 사원 values('E003','박현우','D03')
 insert 사원 values('E004','하정우','D01')
 insert 사원 values('E005','원희선','D03')
 insert 사원 values('E006','이지훈','D04')

 create table 프로젝트
 (프로젝트코드 char(4),
 담당부서 char(3),
 팀장 char(4))
 insert 프로젝트 values('P001','D01','E001')
 insert 프로젝트 values('P001','D02','E001')
 insert 프로젝트 values('P002','D03','E005')
 insert 프로젝트 values('P003','D04','E006')
 select * from 사원
 select * from 프로젝트 

 --1번 하정우 사원과 같은 부서 사람들 출력
 select 부서코드 -- D01
 from 사원
 where 사원명 = '하정우'

 select 사원명
 from 사원
 where 부서코드 = ( select 부서코드 -- D01
 from 사원
 where 사원명 = '하정우')

 --2번 프로젝트 p001를 하고 있는 부서사람들 이름 출력 
 select 담당부서 -- D01, D02
 from 프로젝트
 where 프로젝트코드 = 'P001'

 select 사원명
 from 사원
 where 부서코드 = (select 담당부서
 from 프로젝트
 where 프로젝트코드 = 'P001') -- =은 하나만 엮을 때,, 그래서 오류남!

 select 사원명
 from 사원
 where 부서코드 in (select 담당부서
 from 프로젝트
 where 프로젝트코드 = 'P001') -- in은 여러개 엮을 때'

 -- join으로 풀기
 select 사원명
 from 프로젝트 join 사원
 on 프로젝트.담당부서 = 사원.부서코드
 where 프로젝트코드 = 'P001'
