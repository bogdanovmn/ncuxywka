insert into user_role (id, name)
values (1, 'GUEST'),
       (2, 'USER'),
       (3, 'ADMIN'),
       (4, 'MODERATOR'),
       (5, 'PLAGIARISER');

insert into role2user (user_id, role_id)
values (4, 2),
       (4, 3);