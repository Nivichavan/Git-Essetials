




Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to daring-healer-368811.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
niveditadalvi2015@cloudshell:~ (daring-healer-368811)$ gcloud sql connect cloudtest1 --user=postgres
Allowlisting your IP for incoming connection for 5 minutes...done.     
Connecting to database with SQL user [postgres].Password:
psql (15.0 (Debian 15.0-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
Type "help" for help.

postgres=> \connect guestbook
Password:
psql (15.0 (Debian 15.0-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
You are now connected to database "guestbook" as user "postgres".
guestbook=> select * from entries
guestbook-> select * from entries;
ERROR:  syntax error at or near "select"
LINE 2: select * from entries;
        ^
guestbook=> SELECT * from entries;
  guestname   |   content   | entryid
--------------+-------------+---------
 first guest  | I got here! |       1
 second guest | Me too!     |       2
(2 rows)

guestbook=> insert into entries (guestname,content) values ('third guest','Me too also');                                                                                                                                               
INSERT 0 1
guestbook=> select * from entries;
  guestname   |   content   | entryid
--------------+-------------+---------
 first guest  | I got here! |       1
 second guest | Me too!     |       2
 third guest  | Me too also |       4
(3 rows)

guestbook=> update entries set content='Me Also' where entryid=4;
UPDATE 1
guestbook=> select * from entries;
  guestname   |   content   | entryid
--------------+-------------+---------
 first guest  | I got here! |       1
 second guest | Me too!     |       2
 third guest  | Me Also     |       4
(3 rows)

guestbook=> delete from entries where entryid=4;
DELETE 1
guestbook=> select * from entries;
  guestname   |   content   | entryid
--------------+-------------+---------
 first guest  | I got here! |       1
 second guest | Me too!     |       2
(2 rows)
