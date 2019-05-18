show databases;

use zhang;

show tables;

select * from wb_zyl;
select * from ch_yjl;
select * from ch_zyl_day;
select * from ch_yjl_day;

insert into wb_yjl(id, amount, record_time) values (96, 1530449, '2019-03-02 22:00:00');
insert into ch_zyl_day(id, amount, record_time) values(8, 52.3, '2019-03-02 22:00:00');
insert into ch_yjl(id, amount, record_time) values (11, 18.6, '2019-03-01 22:00:00');

select * from aim;
insert into aim(id, ranking, active, page_amount, record_time) values(57, 13, 47450, 5192676, '2019-03-03 00:00:00');
delete from aim where id = 58;
