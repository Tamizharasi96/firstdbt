select c.*, m.cus_name from 
    {{ ref("member_stg") }} m 
    inner join {{ ref('club_details_stg') }} c
    on m.memid = c.memid