CloudDemo=> select * from DEPARTMENT;
 department_id | department_address | department_code | department_name
---------------+--------------------+-----------------+-----------------
             1 | C-DEPARTMENT Block | ETC             | EC-02
             2 | B-DEPARTMENT Block | ETC             | EC-03
             3 | C-DEPARTMENT Block | ETC             | EC-04
(3 rows)

CloudDemo=> insert into DEPARTMENT (department_id,department_address,department_code,department_name) values (4,'A-DEPARTMENT Block','ETC','EC-05');
INSERT 0 1
CloudDemo=> select * from DEPARTMENT;
 department_id | department_address | department_code | department_name
---------------+--------------------+-----------------+-----------------
             1 | C-DEPARTMENT Block | ETC             | EC-02
             2 | B-DEPARTMENT Block | ETC             | EC-03
             3 | C-DEPARTMENT Block | ETC             | EC-04
             4 | A-DEPARTMENT Block | ETC             | EC-05
(4 rows)

CloudDemo=> update DEPARTMENT set department_address='B-DEPARTMENT Block' where department_id=4;                                                                                                                                        
UPDATE 1
CloudDemo=> select * from DEPARTMENT;
 department_id | department_address | department_code | department_name
---------------+--------------------+-----------------+-----------------
             1 | C-DEPARTMENT Block | ETC             | EC-02
             2 | B-DEPARTMENT Block | ETC             | EC-03
             3 | C-DEPARTMENT Block | ETC             | EC-04
             4 | B-DEPARTMENT Block | ETC             | EC-05
(4 rows)

CloudDemo=> delete from DEPARTMENT where department_id= 4;
DELETE 1
CloudDemo=> select * from DEPARTMENT;                                                                                                                                                                                                   
 department_id | department_address | department_code | department_name
---------------+--------------------+-----------------+-----------------
             1 | C-DEPARTMENT Block | ETC             | EC-02
             2 | B-DEPARTMENT Block | ETC             | EC-03
             3 | C-DEPARTMENT Block | ETC             | EC-04
(3 rows)

CloudDemo=>
