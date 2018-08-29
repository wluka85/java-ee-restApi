create table User (id  bigserial not null, primary key (id))
create table User (id  bigserial not null, primary key (id))
create table User (id  bigserial not null, name varchar(255), primary key (id))
create table User (id  bigserial not null, name varchar(255), primary key (id))
create table User (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table User (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table User (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table user (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, name varchar(255), primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phone (id  bigserial not null, brand varchar(255), model varchar(255), user_id int8 not null, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), phone_id int8 not null, price int8 not null, primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phone (id  bigserial not null, brand varchar(255), model varchar(255), user_id int8 not null, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), phone_id int8 not null, price int8 not null, primary key (id))
create table client (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phone (id  bigserial not null, brand varchar(255), model varchar(255), user_id int8 not null, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table clients_phone (Client_id int8 not null, phones_id int8 not null)
create table phone (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
alter table if exists clients_phone add constraint UK_ijqkq8r6y06j473y3d1sx75w unique (phones_id)
alter table if exists clients_phone add constraint FKpd9yf0197f2s5kolrwqv4p9gl foreign key (phones_id) references phone
alter table if exists clients_phone add constraint FKdlo3yjrynnalkeyknu4yi9dx3 foreign key (Client_id) references clients
alter table if exists phone add constraint FKhqhccos2mwxr8jml2lgsdgkg7 foreign key (client_id) references clients
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table clients_phone (Client_id int8 not null, phones_id int8 not null)
create table phone (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
alter table if exists clients_phone add constraint UK_ijqkq8r6y06j473y3d1sx75w unique (phones_id)
alter table if exists clients_phone add constraint FKpd9yf0197f2s5kolrwqv4p9gl foreign key (phones_id) references phone
alter table if exists clients_phone add constraint FKdlo3yjrynnalkeyknu4yi9dx3 foreign key (Client_id) references clients
alter table if exists phone add constraint FKhqhccos2mwxr8jml2lgsdgkg7 foreign key (client_id) references clients
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table clients_phones (Client_id int8 not null, phones_id int8 not null)
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
alter table if exists clients_phones add constraint UK_mppe2h066rt9f1yj0kmumown8 unique (phones_id)
alter table if exists clients_phones add constraint FKoa6x9h3nq5uypufm51q9rlb4y foreign key (phones_id) references phones
alter table if exists clients_phones add constraint FK75jn9oqr64hawsbp6g03rfle foreign key (Client_id) references clients
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
create table clients (id  bigserial not null, email varchar(255), name varchar(255), primary key (id))
create table phones (id  bigserial not null, brand varchar(255), model varchar(255), client_id int8, primary key (id))
create table service_info (id  bigserial not null, annotation varchar(255), date timestamp, description varchar(255), price int8 not null, phone_id int8, primary key (id))
alter table if exists phones add constraint FK2ovgkw92fjf0rn5yksjxa755b foreign key (client_id) references clients
alter table if exists service_info add constraint FKmc8wah4f0b9pj2efdcyxrdhb7 foreign key (phone_id) references phones
