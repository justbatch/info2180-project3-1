DROP TABLE IF EXISTS mail_user;
CREATE TABLE mail_user (
	user_id INT NOT NULL AUTO_INCREMENT,
	u_name VARCHAR(32) NOT NULL,
	f_name VARCHAR(32) NOT NULL,
	l_name VARCHAR(32) NOT NULL,
	u_pword VARCHAR(32) NOT NULL,
	PRIMARY KEY (user_id)
);
ALTER TABLE mail_user AUTO_INCREMENT = 7000;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	msg_id INT NOT NULL AUTO_INCREMENT,
	recipient_id INT NOT NULL,
	sender_id INT NOT NULL,
	msg_subject VARCHAR(32) NOT NULL,
	msg_body LONGTEXT NOT NULL,
	msg_date DATE,
	PRIMARY KEY (msg_id)
);
ALTER TABLE messages AUTO_INCREMENT = 7000;

DROP TABLE IF EXISTS message_read;
CREATE TABLE message_read (
	msg_read_id INT NOT NULL AUTO_INCREMENT,
	msg_id INT NOT NULL,
	reader_id INT NOT NULL,
	date_read DATE,
	PRIMARY KEY (msg_read_id)
);
ALTER TABLE message_read AUTO_INCREMENT = 7000;

INSERT INTO mail_user(user_id, u_name, f_name, l_name, u_pword)VALUES(6999,'administrator','Yanik','Lynfat','4b50f3d79ec20bfb73860bc8c7706278');
