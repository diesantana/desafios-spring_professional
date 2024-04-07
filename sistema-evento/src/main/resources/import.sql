INSERT INTO tb_category(description) VALUES ('Curso');
INSERT INTO tb_category(description) VALUES ('Oficina');

-- a1
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.0, 1);
-- a2 
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Oficina de Github', 'Controle versões de seus projetos', 50.0, 2);


--b1
INSERT INTO tb_block(start, finish, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z', 1);
--b2 
INSERT INTO tb_block(start, finish, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z', 2);
--b3
INSERT INTO tb_block(start, finish, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z', 2);
    

-- p1
INSERT INTO tb_participant(name, email) VALUES ('José Silva', 'jose@gmail.com');
-- p2
INSERT INTO tb_participant(name, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
-- p3
INSERT INTO tb_participant(name, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
-- p4
INSERT INTO tb_participant(name, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

-- a1 + p1
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (1, 1);
-- a1 + p2
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (2, 1);
-- a1 + p3
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (3, 1);
-- a2 + p1
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (1, 2);
-- a2 + p3
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (3, 2);
-- a2 + p4
INSERT INTO tb_participant_activity(participant_id, activity_id) VALUES (4, 2);

