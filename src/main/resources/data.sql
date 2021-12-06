insert into `place` (`place_type`, `place_name`, `address`, `phone_number`, `capacity`, `memo`)
values
    ('HEALTH', 'JMS휘트니스', '고양 덕양구 화정동', '010-9999-0000', 30, 'JMS휘트니스 입니다.'),
    ('HEALTH', '쏘마휘트니스', '고양 덕양구 화정동', '010-1234-5678', 40, '쏘마휘트니스 입니다.'),
    ('HEALTH', '럭키짐', '고양 덕양구 화정동', '010-1004-1004', 40, '럭키짐 입니다'),
    ('PILATES', '아리아필라테스', '고양 덕양구 화정동', '010-1111-1111', 20, '아리아필라테스 입니다'),
    ('PILATES', '원업필라테스', '고양 덕양구 화정동', '010-1234-5678', 10, '원업필라테스 입니다.')
;
insert into `event` (`place_id`, `event_name`, `event_status`, `event_start_datetime`, `event_end_datetime`, `current_number_of_people`, `capacity`, `memo`)
values
    (1, '현재 운영중', 'OPENED', '2021-12-09 08:00:00', '2021-12-09 12:00:00', 12, 30, '현재 운영중입니다.'),
    (1, '그룹 PT 모집', 'EVENT', '2021-01-01 13:00:00', '2021-01-01 12:00:00', 2, 5, '기존 PT 가격의 20%'),
    (2, '현재 운영중', 'OPENED', '2021-01-02 09:00:00', '2021-01-02 12:00:00', 24, 40, '현재 운영중입니다.'),
    (2, '겨울방학 특별 할인', 'EVENT', '2021-01-03 09:00:00', '2021-01-03 12:00:00', 14, 20, '3개월 가격 30 -> 24'),
    (4, '현재 운영중', 'OPENED', '2021-02-01 08:00:00', '2021-02-01 12:30:00', 12, 50, '현재 운영중입니다.')
;
insert into `admin` (`email`, `nickname`, `password`, `phone_number`, `memo`)
values
    ('test@test.com', '테스트', '{noop}1234', '010-0101-0101', '안녕하세요'),
    ('1234@test.com', '1234', '{noop}1234', '010-0101-0101', '안녕하세요')
;
insert into `admin_place_map` (`admin_id`, `place_id`)
values
    (1, 1),
    (1, 2),
    (1, 3)
;