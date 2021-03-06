CREATE TABLE restaurant (
    restaurant_id bigint NOT NULL,
    restaurant_name varchar(100) NOT NULL,
    province_id bigint NOT NULL,
    city_id bigint NOT NULL,
    district_id bigint NOT NULL,
    village_name varchar(100),
    street varchar(100),
    post_code varchar(20),
    latitude double precision,
    longitude double precision,
    restaurant_tax double precision,
    service_tax double precision,
    deleted character(1) NOT NULL,
    create_at TIMESTAMP WITH TIME ZONE NOT NULL,
    update_at TIMESTAMP WITH TIME ZONE NOT NULL,
    create_by bigint NOT NULL,
    update_by bigint NOT NULL,

    PRIMARY KEY (restaurant_id),
    FOREIGN KEY (province_id) REFERENCES province(province_id),
    FOREIGN KEY (city_id) REFERENCES city(city_id),
    FOREIGN KEY (district_id) REFERENCES district(district_id),
    FOREIGN KEY (create_by) REFERENCES account(account_id),
    FOREIGN KEY (update_by) REFERENCES account(account_id)
);