with basic_join as
(
    select b.bookid, m.memid, m.surname, m.firstname  from bookings b inner join members m
on b.memid = m.memid
)

select * from basic_join