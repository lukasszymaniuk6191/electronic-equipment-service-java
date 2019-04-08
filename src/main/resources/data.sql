INSERT INTO public.users (id, username, password) VALUES (1, 'Alex123', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu');
INSERT INTO public.users (id, username, password) VALUES (2, 'Tom234', '$2a$04$PCIX2hYrve38M7eOcqAbCO9UqjYg7gfFNpKsinAxh99nms9e.8HwK');
INSERT INTO public.users (id, username, password) VALUES (3, 'Adam', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu');


INSERT INTO public.statuses (id, name) VALUES (1, 'repaired');
INSERT INTO public.statuses (id, name) VALUES (2, 'broken');
INSERT INTO public.statuses (id, name) VALUES (3, 'in repair');

INSERT INTO public.categories (id, name) VALUES (1, 'tv');
INSERT INTO public.categories (id, name) VALUES (2, 'computer');
INSERT INTO public.categories (id, name) VALUES (3, 'phone');

INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (1, 'Samsung', 'UE55NU7172U', 'Jan Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (2, 'LG', '49UK6300', 'Andrzej Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (3, 'Samsung', 'UE40EH5000 ', 'Stanislaw Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (4, 'Lenovo', 'IdeaPad 320', 'Michal Kowalski', 2);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (5, 'Lenowo', 'X131e', 'Lukasz Kowalski', 2);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (6, 'Huawei', 'P20', 'Adam Kowalski', 3);

INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (1, 'logged user', '2019-04-09 19:53:04.495000', 'description_1', 1, 1);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (2, 'logged user', '2019-04-03 19:54:02.174000', 'description_2', 2, 2);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (3, 'logged_user', '2019-02-08 19:54:38.321000', 'description_3', 3, 3);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (4, 'logged_user', '2019-02-08 19:55:00.909000', 'description_4', 4, 1);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (5, 'logged_user', '2017-04-08 19:55:36.452000', 'description_5', 5, 2);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (6, 'logged_user', '2019-04-01 19:56:21.839000', 'description_6', 6, 3);


INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (1, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:26.382000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (2, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:31.011000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (3, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:32.587000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (4, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:33.795000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (5, 'logged_author', 'equipment_1
comment_1', '2019-04-08 22:07:10.807000', 2);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (6, 'logged_author', 'equipment_1
comment_2', '2019-04-08 22:07:24.622000', 2);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (7, 'logged_author', 'equipment_3
comment_1', '2019-04-08 22:07:53.591000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (8, 'logged_author', 'equipment_3
comment_2', '2019-04-08 22:07:58.653000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (9, 'logged_author', 'equipment_3
comment_3', '2019-04-08 22:08:05.941000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (10, 'logged_author', 'equipment_4
comment_1', '2019-04-08 22:08:31.350000', 4);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (11, 'logged_author', 'equipment_4
comment_2', '2019-04-08 22:08:41.037000', 4);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (12, 'logged_author', 'equipment_4
comment_2', '2019-04-08 22:10:05.963000', 4);


INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (1, 'param_1 description', 'param_1', 1);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (2, 'param_2 description', 'param_2', 1);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (3, 'param_1 description', 'param_1', 2);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (4, 'param_2 description', 'param_2', 2);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (5, 'param_3 description', 'param_3', 2);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (6, 'param_1 description', 'param_1', 3);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (7, 'param_2 description', 'param_2', 3);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (8, 'param_1 description', 'param_1', 4);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (9, 'param_1 description', 'param_1', 5);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (10, 'param_2 description', 'param_2', 5);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (11, 'param_3 description', 'param_3', 5);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (12, 'param_1 description', 'param_1', 6);








INSERT INTO users (id, username, password) VALUES (1, 'Alex123', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu');
INSERT INTO users (id, username, password) VALUES (2, 'Tom234', '$2a$04$PCIX2hYrve38M7eOcqAbCO9UqjYg7gfFNpKsinAxh99nms9e.8HwK');
INSERT INTO users (id, username, password) VALUES (3, 'Adam', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu');


INSERT INTO public.statuses (id, name) VALUES (1, 'repaired');
INSERT INTO public.statuses (id, name) VALUES (2, 'broken');
INSERT INTO public.statuses (id, name) VALUES (3, 'in repair');

INSERT INTO public.categories (id, name) VALUES (1, 'tv');
INSERT INTO public.categories (id, name) VALUES (2, 'computer');
INSERT INTO public.categories (id, name) VALUES (3, 'phone');

INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (1, 'Samsung', 'UE55NU7172U', 'Jan Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (2, 'LG', '49UK6300', 'Andrzej Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (3, 'Samsung', 'UE40EH5000 ', 'Stanislaw Kowalski', 1);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (4, 'Lenovo', 'IdeaPad 320', 'Michal Kowalski', 2);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (5, 'Lenowo', 'X131e', 'Lukasz Kowalski', 2);
INSERT INTO public.equipments (id, mark, model, owner, category_id) VALUES (6, 'Huawei', 'P20', 'Adam Kowalski', 3);

INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (1, 'logged user', '2019-04-09 19:53:04.495000', 'description_1', 1, 1);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (2, 'logged user', '2019-04-03 19:54:02.174000', 'description_2', 2, 2);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (3, 'logged_user', '2019-02-08 19:54:38.321000', 'description_3', 3, 3);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (4, 'logged_user', '2019-02-08 19:55:00.909000', 'description_4', 4, 1);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (5, 'logged_user', '2017-04-08 19:55:36.452000', 'description_5', 5, 2);
INSERT INTO public.issues (id, auhor, date, description, equipment_id, status_id) VALUES (6, 'logged_user', '2019-04-01 19:56:21.839000', 'description_6', 6, 3);


INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (1, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:26.382000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (2, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:31.011000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (3, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:32.587000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (4, 'logged_author', 'http://localhost:4200/service/equipment-data/1', '2019-04-08 22:06:33.795000', 1);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (5, 'logged_author', 'equipment_1
comment_1', '2019-04-08 22:07:10.807000', 2);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (6, 'logged_author', 'equipment_1
comment_2', '2019-04-08 22:07:24.622000', 2);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (7, 'logged_author', 'equipment_3
comment_1', '2019-04-08 22:07:53.591000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (8, 'logged_author', 'equipment_3
comment_2', '2019-04-08 22:07:58.653000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (9, 'logged_author', 'equipment_3
comment_3', '2019-04-08 22:08:05.941000', 3);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (10, 'logged_author', 'equipment_4
comment_1', '2019-04-08 22:08:31.350000', 4);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (11, 'logged_author', 'equipment_4
comment_2', '2019-04-08 22:08:41.037000', 4);
INSERT INTO public.comments (id, author, comment_text, date, equipment_id) VALUES (12, 'logged_author', 'equipment_4
comment_2', '2019-04-08 22:10:05.963000', 4);


INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (1, 'param_1 description', 'param_1', 1);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (2, 'param_2 description', 'param_2', 1);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (3, 'param_1 description', 'param_1', 2);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (4, 'param_2 description', 'param_2', 2);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (5, 'param_3 description', 'param_3', 2);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (6, 'param_1 description', 'param_1', 3);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (7, 'param_2 description', 'param_2', 3);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (8, 'param_1 description', 'param_1', 4);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (9, 'param_1 description', 'param_1', 5);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (10, 'param_2 description', 'param_2', 5);
INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (11, 'param_3 description', 'param_3', 5);

INSERT INTO public.parameters (id, description, name, equipment_id) VALUES (12, 'param_1 description', 'param_1', 6);








