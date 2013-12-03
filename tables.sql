CREATE TABLE messages_t (id integer primary key autoincrement, 
                         instance_id varchar2(100),
                         message text, 
                         creation_date datetime);


CREATE TABLE measurements_t (id integer primary key autoincrement,
                         instance_id varchar2(100),
                         voltage float,
                         pressure float,
                         internal_temp float,
                         external_temp float,
                         creation_date datetime);


CREATE TABLE gps_t (id integer primary key autoincrement,
                    instance_id varchar2(100),
                    latitude float,
                    longitude float,
                    height    integer,
                    gps_date  varchar2(20),
                    gps_time  varchar2(20),
                    creation_date datetime);

CREATE TABLE bb_voltage_t (id integer primary key autoincrement,
	                   instance_id varchar2(100),
			   voltage float,
			   creation_date datetime);


CREATE TABLE radio_stats_t (id integer primary key autoincrement,
                             instance_id varchar2(100),
			     place integer,
                             stats text,
                             creation_date datetime);
