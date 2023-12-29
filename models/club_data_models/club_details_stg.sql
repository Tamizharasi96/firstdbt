select
    b.bookid, b.facid, b.memid, b.starttime, b.slots, f.name, f.membercost, f.guestcost, f.initialoutlay, f.monthlymaintenance
    from
        {{ref("bookings_stg")}} b 
        inner join
        {{ref("facilities_stg")}} f 
        on b.facid = f.facid 
order by b.starttime desc