--select title
--from dbo.song_song
--where artist_id=5;


--select title
--from dbo.song_playlist
--where owner_id=1;
--list playlist haee ke ye nafar sakhte


--select title
--from dbo.song_song;
--list ahang ha


--select username
--from dbo.accounts_user as u join dbo.accounts_follow as f on u.id = f.user2_id
--where f.user1_id=1 ;
--list afradi ke yek nafar follow karde


--select username
--from dbo.accounts_user as u join dbo.accounts_follow as f on u.id = f.user1_id
--where f.user2_id=6;
--list afradi ke yek nafar ro follow kardan


--select count,title
--from dbo.song_song
--where id = 2;
--tedad dafate gosh dade shodan ahang



--select title
--from dbo.song_album
--where artist_id=2;
--list Albom haee yek artist



--select title,name
--from dbo.song_song as ss join dbo.song_song_tags as sst on ss.id=sst.song_id join dbo.song_tag as st on st.id=sst.tag_id
--where ss.id=3;
--list tag haye har ahang



--select sh.user_age,st.name
--from dbo.song_tag as st join dbo.song_song_tags as sst on st.id=sst.tag_id join dbo.song_song as ss on ss.id=sst.song_id join dbo.song_history as sh on sh.song_id = ss.id
--ORDER BY sh.user_age;
--list bar asas sen afradi ke yek tag ra gosh mikonand


--select au.city,st.name
--from dbo.song_tag as st join dbo.song_song_tags as sst on st.id=sst.tag_id join dbo.song_song as ss on ss.id=sst.song_id join dbo.song_history as sh on sh.song_id = ss.id join dbo.accounts_user as au on sh.user_id=au.id
--ORDER BY au.city;
--list bar asas shahr afradi ke yek tag ra gosh mikonand


--select sh.add_datetime,st.name
--from dbo.song_tag as st join dbo.song_song_tags as sst on st.id=sst.tag_id join dbo.song_song as ss on ss.id=sst.song_id join dbo.song_history as sh on sh.song_id = ss.id
--ORDER BY sh.add_datetime;
--list bar asas zamani ke har fard yek tag ra gosh midahad
