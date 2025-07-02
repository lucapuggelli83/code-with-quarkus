create sequence users_seq start with 1 increment by 1;
create sequence trips_seq start with 1 increment by 1;
create sequence trip_users_seq start with 1 increment by 1;
create sequence feedback_seq start with 1 increment by 1;

create table if not exists users (
    id INT4 NOT NULL PRIMARY KEY DEFAULT nextval('users_seq'),
    username varchar(50) not null unique,
    password varchar(255) not null,
    email varchar(100) not null unique,
    created_at timestamp default current_timestamp,
    type INT4 NOT NULL
);

create table if not exists trips (
    id INT4 NOT NULL PRIMARY KEY DEFAULT nextval('trips_seq'),
    user_id INT4 NOT NULL,
    start_location varchar(255) not null,
    end_location varchar(255) not null,
    start_time timestamp not null,
    end_time timestamp not null,
    car_parks int4,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

create table if not exists trip_users (
    id INT4 NOT NULL PRIMARY KEY DEFAULT nextval('trip_users_seq'),
    trip_id INT4 NOT NULL,
    user_id INT4 NOT NULL,
    timestamp timestamp not null,
    FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

create table if not exists feedback (
    id INT4 NOT NULL PRIMARY KEY DEFAULT nextval('feedback_seq'),
    trip_id INT4 NOT NULL,
    trip_user_id INT4 NOT NULL,
    FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE,
    FOREIGN KEY (trip_user_id) REFERENCES trip_users(id) ON DELETE CASCADE
);