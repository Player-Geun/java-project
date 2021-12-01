insert into `place` (`place_type`, `place_name`, `address`, `phone_number`, `capacity`, `memo`)
values
    ('HEALTH', 'JMS휘트니스 화정12호점', '고양 덕양구 화정동', '010-9999-0000', 20, '신장 개업'),
    ('HEALTH', '쏘마휘트니스', '고양 덕양구 화정동', '010-1234-5678', 10, '테스트 메모'),
    ('HEALTH', '럭키짐', '고양 덕양구 화정동', '010-1004-1004', 9000, null),
    ('PILATES', '아리아필라테스', '고양 덕양구 화정동', '010-1111-1111', 50, '특가 세일'),
    ('PILATES', '원업필라테스', '고양 덕양구 화정동', '010-1234-5678', 1, '겨울 이벤트')
;
insert into `event` (`place_id`, `event_name`, `event_status`, `event_start_datetime`, `event_end_datetime`, `current_number_of_people`, `capacity`, `memo`)
values
    (1, '헬스1', 'OPENED', '2021-01-01 09:00:00', '2021-01-01 12:00:00', 0, 20, 'test memo1'),
    (1, '헬스2', 'OPENED', '2021-01-01 13:00:00', '2021-01-01 12:00:00', 0, 20, 'test memo2'),
    (2, '헬스3', 'OPENED', '2021-01-02 09:00:00', '2021-01-02 12:00:00', 0, 30, 'test memo3'),
    (2, '헬스4', 'OPENED', '2021-01-03 09:00:00', '2021-01-03 12:00:00', 0, 30, 'test memo4'),
    (2, '헬스5', 'CLOSED', '2021-01-04 09:00:00', '2021-01-04 12:00:00', 0, 30, 'test memo5'),
    (3, '필라1', 'OPENED', '2021-02-01 08:00:00', '2021-02-01 12:30:00', 12, 50, 'test memo6')
;
insert into `admin` (`email`, `nickname`, `password`, `phone_number`, `memo`)
values
    ('test@test.com', '테스트', '1234', '010-0101-0101', '안녕하세요')
;
insert into `admin_place_map` (`admin_id`, `place_id`)
values
    (1, 1),
    (1, 2),
    (1, 3)
;