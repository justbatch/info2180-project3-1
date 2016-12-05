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
	msg_body TEXT NOT NULL,
	msg_date DATE,
	PRIMARY KEY (msg_id),
	FOREIGN KEY (recipient_id) REFERENCES mail_user (user_id), 
	FOREIGN KEY (sender_id) REFERENCES mail_user (user_id)
);
ALTER TABLE messages AUTO_INCREMENT = 7000;

DROP TABLE IF EXISTS message_read;
CREATE TABLE message_read (
	msg_read_id INT NOT NULL AUTO_INCREMENT,
	msg_id INT NOT NULL,
	reader_id INT NOT NULL,
	date_sent DATE,
	PRIMARY KEY (msg_read_id),
	FOREIGN KEY (msg_id) REFERENCES messages (msg_id),
	FOREIGN KEY (reader_id) REFERENCES mail_user (user_id)
);
ALTER TABLE message_read AUTO_INCREMENT = 7000;

SELECT mail_user.u_name, messages.msg_subject, message_read.reader_id
FROM mail_user JOIN messages ON mail_user.user_id = messages.sender_id
JOIN message_read ON messages.msg_id = message_read.msg_id
LIMIT 10;

-- Test Users
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JesAd','Jessica','Adkins','$K8NKJ3uF1');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JohTh','John','Thompson','%H#)9CtYDw');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JamGa','James','Garcia','0owHyuah&5');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('EriKl','Erika','Klein','_h#Y7Xds8A');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MicFo','Michelle','Fox',')%oKgjSVY4');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AndJo','Andrew','Johnson','+(ADM&YmD0');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('CesFi','Cesar','Fisher','a)2GyaiqxT');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('BraAu','Brandon','Austin','(9HbM*8iLz');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MelAr','Melinda','Arias','+(gZ4xWsD!');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('SarMo','Sarah','Moore','ynGA8BV@$(');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('DavBa','David','Barnes','&f4qW^czK&');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('KriMa','Krista','Martin','&gZTOaGuK9');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AllLo','Allen','Love','M)65IuWp&y');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MonDu','Monica','Duarte','t4PCf^7y^S');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('RayMu','Raymond','Murphy','#4U2OCl5Ja');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MelSm','Melissa','Smith',')CXDPVzZ72');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MelSo','Melissa','Soto','WH92Afs!@!');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('SarWa','Sara','Wagner','Vl*Jl9Ozw_');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AnaHa','Ana','Haley','&D4UcfCwqb');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('CatBe','Catherine','Bennett','(4EAyB0QcR');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('LuiMo','Luis','Morrison','2%ZjMtyu$S');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('HeaSm','Heather','Smith','u*@1ToDLJn');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AndDi','Andrew','Diaz','p)^0Ukc0)j');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('SeaGo','Sean','Gonzalez','9!8lEvPp_x');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AmbTh','Amber','Thomas','J^y8ENVmo&');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('TonMe','Toni','Medina','S4)0^IkGc+');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('LorLo','Lori','Long','b*s7eBH&7i');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('SanAn','Sandra','Anderson','%5CBH8bu$Z');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JesSm','Jessica','Smith','*D2Fh!Oq8T');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('TraSc','Travis','Schultz','310F4bIS(1');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('BriMo','Brittany','Morales','h754ZhYa%o');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JayIb','Jay','Ibarra','q_uowSXu14');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AudLa','Audrey','Lara','VjCr7FWv@c');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AleJo','Alexis','Johnson','7gI!ljUG)U');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MarBr','Martin','Brown','y8Z(quMq^q');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MicBi','Michael','Bishop','mph65Fga_P');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('DavPa','David','Patton','m@3EWxYgly');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AleKr','Alexis','Krueger','M8#KUJgi&t');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MarSt','Marc','Stevens','g&8JOv7Ia&');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('AntBu','Anthony','Burnett','@bTwKs7n29');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JusWi','Justin','Williams','+p2%Ym*6NK');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('LeePo','Lee','Potter','_oja%QHLN4');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('PatFu','Patricia','Fuller','^6xAC6lh&o');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('StaOl','Stacy','Olsen','o+5vG1vX(&');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MarSp','Marcus','Spears','^0kTb0cbIz');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('MicFr','Michael','Fritz','i8)$Y(js+U');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('RacBe','Rachel','Bell','_nGqRgB6x5');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('CheWi','Chelsea','Williams','V!91FP!T1d');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('RicRe','Richard','Reed','#!_(Vic3Xs');
INSERT INTO mail_user(u_name, f_name, l_name, u_pword)VALUES('JasTh','Jasmine','Thompson','G!Jr8AYbyv');

-- Test Messages
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7040,7049,'Repellendus porro.','Aspernatur architecto aliquam consequatur praesentium. Alias magnam quo ut. Culpa nobis necessitatibus recusandae incidunt dignissimos velit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7031,7039,'Blanditiis expedita.','Totam numquam facere amet doloribus pariatur sit. Suscipit quas impedit consequatur quasi ipsam nemo. Velit sequi facere fugit adipisci dolore.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7028,7041,'Quod repellendus.','Doloremque vel porro quos minus nostrum accusamus rem. Maiores perferendis sed modi rerum assumenda aliquid expedita. Quas facere vitae eligendi harum earum.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7039,7017,'Sunt accusamus.','Omnis eaque maxime a deserunt quam nisi sed. Ad minus similique sed magni ab hic.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7047,7034,'Blanditiis.','Asperiores autem perspiciatis fugiat modi dicta facere asperiores. Accusamus id minima asperiores distinctio. Consectetur beatae recusandae ex eos. Quisquam eius minus corrupti soluta.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7019,7041,'Accusantium dolore.','Ab pariatur voluptatibus facere autem. Quasi voluptate perspiciatis libero quod ducimus. Quidem adipisci eaque laudantium.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7048,7004,'Labore amet eveniet.','Officiis similique fugiat ex fugit facere rerum. Sequi omnis eligendi incidunt est. Laudantium magnam ea est explicabo non.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7001,7006,'Repellat facilis.','Magni aliquid necessitatibus tenetur et at quisquam aspernatur. Quo magnam qui vel laborum.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7031,7041,'Totam nobis dolorem.','Suscipit sequi perspiciatis voluptatem quam nihil qui. Earum aut enim nemo error ipsa aspernatur a. Iure impedit inventore vero. Deserunt totam omnis in alias hic ea perspiciatis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7023,7045,'Quas dolorem non ad.','Exercitationem aliquid voluptatum ipsam rerum perspiciatis. Numquam nam aliquid minima id dolorum impedit. Aliquam explicabo numquam a debitis soluta.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7037,7024,'Dignissimos.','Aliquid adipisci tenetur nemo. Nostrum quisquam iste dolore est nisi est voluptas hic. Aliquam repudiandae earum cum laudantium in. Assumenda vitae illum rem corrupti magnam.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7035,7049,'Vitae quaerat.','Illum maxime rerum provident nihil voluptate. Veniam dolorem asperiores harum dicta consequuntur doloribus eveniet. Enim vel suscipit debitis ex saepe voluptate saepe quia.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7031,7042,'Provident voluptas.','Labore fugit tempora optio tempore eaque. Adipisci quia atque voluptatibus cupiditate deserunt. Fugiat nam doloribus necessitatibus consectetur. Ad ullam quaerat hic rerum eligendi.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7009,7039,'Aliquam tempore.','Laborum voluptate repellat ipsam quidem. Esse labore laudantium omnis voluptate omnis sit quos.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7003,7006,'Perspiciatis.','Cum ratione dolorem nulla ea ut quia. Ipsam incidunt error dolor recusandae. Magni alias fuga fugiat repellat cumque maxime.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7002,7037,'Ipsum natus.','Est minus natus voluptatum. Dignissimos beatae mollitia rerum soluta enim impedit iusto. Aliquam alias pariatur itaque quae ut provident reprehenderit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7040,7014,'Ab sit expedita.','Amet similique quam nulla quisquam rem. Repellat pariatur hic placeat beatae. Ipsa incidunt ducimus ab cum quod iusto repellat.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7018,7016,'Ipsum repellendus.','Quam veritatis doloribus ducimus non corrupti et velit. Nostrum atque cumque provident reiciendis. Id hic dolorem dicta voluptatum quos tempore.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7002,7012,'Aperiam maxime.','Laboriosam sequi dolorum odio dolore veritatis. Illo illo nobis quo numquam assumenda autem esse excepturi. Necessitatibus aperiam numquam error eius facilis. Eos porro vero minus amet aliquid.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7030,7043,'Sunt a error eius.','Labore explicabo suscipit sint et. Dolorum tenetur dicta quibusdam deserunt. Neque quae ipsa dolor voluptatibus expedita.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7042,'Neque sapiente esse.','Libero doloribus aspernatur culpa nihil magni. Non voluptate rerum nam repellendus occaecati.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7046,7018,'Eligendi.','Ut doloremque facilis ipsa ut accusamus. Eligendi soluta ipsum neque beatae nostrum est voluptatibus. Fugit exercitationem velit sint nisi suscipit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7032,7044,'Placeat hic eum.','Aut ipsam numquam iusto animi. Modi repudiandae perferendis magnam nulla. Non excepturi atque quaerat ipsa. Enim quibusdam dolorum aut possimus magni.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7005,7030,'Libero impedit.','Quia nostrum tempora mollitia necessitatibus reiciendis. Soluta eaque aut quo repellat delectus porro. Quod corporis soluta quia asperiores dolores voluptate commodi.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7006,7022,'Voluptatum fuga.','Dicta enim porro perspiciatis voluptatem accusantium. Quaerat aspernatur fuga alias alias. Saepe esse quos itaque a. Qui accusamus magnam sit recusandae nisi.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7001,7045,'Tempora ducimus.','Ipsa optio voluptatem error sint magnam unde. Enim odio in neque.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7018,7031,'Molestiae pariatur.','Iusto sequi dolorem eveniet veniam quod delectus vitae. Nobis totam asperiores eveniet.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7032,7028,'Sequi velit cumque.','Sapiente sunt dolorum laborum hic molestias ratione vitae. Commodi ea asperiores totam officia eum. Repudiandae a deleniti dolor in a. Eum tenetur accusantium qui assumenda.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7037,'Nihil error.','Consequuntur saepe voluptates temporibus voluptate at blanditiis. Unde ad aliquid ab repellat.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7005,7041,'Illo ut illum.','Facilis labore quas commodi nisi enim totam. Labore consectetur sint dignissimos saepe iusto tenetur. Nam laborum expedita excepturi dolorem.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7015,7005,'Laudantium ad illo.','Doloremque rem facilis praesentium laborum ullam inventore saepe. Vel debitis hic porro sint incidunt. Sequi totam eaque dolorum ea hic possimus. Similique atque nemo architecto quas.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7022,7036,'Odit sunt soluta.','Excepturi nesciunt vel ducimus odit qui. Laudantium ab accusantium quas error. Voluptatibus natus facilis sequi porro facilis eius. Explicabo culpa sunt rem.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7026,'Optio ipsam ut.','Nobis totam voluptatibus aspernatur omnis velit sapiente. Eligendi dolorum expedita voluptatem magni deserunt. Possimus alias fuga recusandae beatae rem hic optio.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7001,7005,'Ut sapiente.','Labore eaque labore excepturi repellendus fugit nobis dicta. Fugiat repellat deserunt eos amet ab quam eius. Inventore recusandae qui exercitationem incidunt eveniet neque.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7005,'Voluptatum id quae.','Qui deserunt dignissimos eligendi. Tenetur mollitia repellat aperiam minus aut adipisci quos. Non omnis eos delectus tempore voluptate culpa magni. Pariatur ratione amet officiis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7017,7031,'Molestias.','Beatae eligendi est perferendis. Repellat nemo quasi pariatur. Atque nihil itaque rerum nisi accusantium. Illo soluta minus dicta unde nisi ipsa voluptate.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7039,'Rerum sunt iure.','Velit cumque optio nobis a fugiat nobis ullam. Saepe fuga harum perferendis in. Numquam fugit aperiam consequatur aut corporis adipisci reprehenderit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7012,7027,'Nobis veniam.','Eum praesentium adipisci dolore dolorem et. Blanditiis delectus dolorem iusto maxime repudiandae. Cumque voluptates reiciendis eius eveniet.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7042,7028,'Consequuntur in.','Nobis veritatis impedit architecto itaque maiores natus. Fugiat dolores consequuntur eligendi eos. Tempore voluptatum expedita praesentium debitis ex earum.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7010,7046,'Nulla nemo.','Totam harum ratione vero veniam tempora autem provident. Beatae nostrum quis adipisci et voluptate. Error quo cum laboriosam nam.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7006,7042,'Commodi velit.','Doloremque sunt quasi dicta modi nulla saepe. Suscipit ad totam consequatur autem totam. Totam commodi culpa illum officiis. Laboriosam iusto sapiente quibusdam impedit cum rem.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7023,7039,'Tempore nesciunt.','Molestias sapiente rem iure beatae inventore. Commodi ipsam quibusdam laborum architecto.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7041,'Excepturi possimus.','Ducimus magnam voluptatibus aliquid recusandae beatae. Odit impedit occaecati quisquam non facilis ea natus.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7030,7018,'Veritatis libero.','Veniam reprehenderit magni aliquid quam. Totam ad ducimus asperiores minus saepe tenetur ratione.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7038,7030,'Error numquam rerum.','Atque vitae enim dolore repellendus nulla tenetur nihil id. Ipsa perferendis aperiam eligendi veritatis. Laudantium ex occaecati occaecati culpa maiores consectetur. Ex quae modi minus fugiat.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7046,7006,'Soluta repudiandae.','Officia ducimus facere dolores dolores. Harum vitae explicabo dolore eveniet recusandae sint et.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7008,7013,'Hic ut animi.','Libero et ea excepturi itaque quis nihil. Eum doloribus placeat rem dolorum. Necessitatibus iusto recusandae nam minima quam accusamus.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7048,7020,'Corrupti libero.','Exercitationem incidunt beatae placeat vero. In quam ex doloremque. Nostrum excepturi corporis aperiam magni.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7047,7024,'Officia itaque.','Dolor fugiat aspernatur nesciunt id quas numquam incidunt. Enim quas totam quia qui error. Nemo voluptatum cupiditate consequatur odio tempore corrupti debitis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7004,7010,'Labore enim.','Nemo quas et consequatur perferendis dolor voluptates. Totam cupiditate eos rem placeat quod fugit. Assumenda aliquam quisquam dolorum suscipit modi saepe eos.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7036,7017,'Beatae deleniti.','Deserunt adipisci doloribus ea doloribus velit. Minima aperiam asperiores tempore enim nihil dolorum expedita. Iure nisi nulla accusamus ea repellendus aut odio molestiae.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7007,7014,'Sit molestiae.','Laboriosam est quae quos aliquam vel ex. Ipsa exercitationem et fuga quod hic dignissimos. Nemo quam vitae magni aut.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7009,7022,'Ipsam commodi ut.','Suscipit voluptates debitis sed necessitatibus enim. Temporibus aliquid pariatur sapiente quidem ab. Vitae veniam modi quia dolores fugit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7042,7046,'Incidunt alias.','Debitis animi omnis placeat cum explicabo. Consectetur deleniti labore architecto et. Odit occaecati molestiae earum dignissimos labore. Dolore est voluptate eos amet.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7013,7026,'Excepturi deserunt.','Tempora omnis sequi officiis magni minus asperiores velit. Possimus sequi praesentium dicta mollitia omnis quaerat vel. Harum cupiditate voluptatibus error possimus.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7026,7042,'Magni est velit ab.','Quam magnam mollitia quam soluta iste. Assumenda commodi quisquam possimus ipsa. Officiis fuga ducimus quae incidunt minus totam.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7039,7017,'Beatae laboriosam.','Consectetur cum esse commodi ad impedit cum. Voluptates eum perspiciatis quae adipisci eius accusantium qui. Labore tempora facilis placeat architecto recusandae saepe culpa.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7018,7044,'Amet soluta.','Dicta adipisci quasi totam dolor minus dolorem iste. Tempora voluptas consequuntur dolores provident laborum. Sunt consequatur dolor dignissimos incidunt itaque porro architecto laudantium.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7043,7031,'Totam.','Culpa architecto earum perferendis voluptatem. Maiores soluta voluptas quod. Occaecati laudantium quis ipsa cumque non. Ex esse voluptates reiciendis rem quod.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7032,7029,'Aut maxime sequi.','In magnam maiores tempora porro nihil praesentium. Adipisci harum nesciunt facilis. Architecto facilis fugiat eius. Ducimus iste in rem quas ab magnam. Culpa atque et suscipit sit adipisci quas sit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7026,7024,'Nobis iusto.','Debitis recusandae ex sapiente molestiae. Ut delectus provident architecto odit. Consequatur consequuntur ex repudiandae perspiciatis hic asperiores reprehenderit mollitia.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7020,7043,'Voluptas molestias.','Animi beatae nihil culpa quasi quos laboriosam facilis. Porro modi deserunt rem distinctio doloremque quisquam. Fugiat itaque quae autem ipsum voluptatibus eius.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7003,7021,'Corrupti architecto.','Minima minus ipsam tempora rem pariatur modi quisquam. Doloribus inventore porro laboriosam ut a. Ducimus vitae esse voluptatum itaque dolore architecto.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7038,7037,'Quae voluptatem.','Velit at quisquam cupiditate odio ab perspiciatis quam assumenda. Dolor delectus aliquam velit vitae. Fugit dolor quia minima rem. Consectetur saepe quia doloremque consequatur deleniti at dolore.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7043,7010,'Recusandae.','Dignissimos suscipit perferendis libero eius eum. Error delectus nihil molestiae eos sapiente illum odit. Inventore laborum optio perspiciatis molestiae consequatur.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7036,7049,'Corporis.','Adipisci vel accusamus exercitationem atque. Corporis modi unde repudiandae autem magni ipsa. Vel sunt cumque ab temporibus. Officia dolor dignissimos itaque nobis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7021,7032,'Libero facilis.','Quasi labore molestiae nulla velit. Voluptatum velit doloribus voluptas temporibus molestiae. Recusandae iure fuga quibusdam aliquid. Optio laborum vel cupiditate quia.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7030,7034,'Fugit porro nam.','Quis corporis qui molestias temporibus beatae officia. Est molestiae sed delectus unde fugiat. Atque dolorum doloremque ipsa illum soluta quos. Cum dicta eaque mollitia modi illum voluptatibus.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7011,7012,'Labore dolores quis.','Dolores nostrum quas deleniti. Vitae est pariatur neque possimus repellat deleniti. Dolorem doloremque fugit id est ipsam.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7002,7027,'Dolor cumque vel.','Architecto maxime qui cupiditate autem ipsam neque. Reiciendis architecto debitis odit odit accusamus facilis laboriosam. Sed quidem quod repellendus aut consequuntur.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7027,7005,'Quo quam veritatis.','Odit occaecati in inventore quia reiciendis sit consequuntur. Quibusdam veritatis illo natus reiciendis voluptatem quod. Rem nesciunt recusandae inventore praesentium natus soluta maxime.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7048,7044,'Facere quos iure.','Quibusdam quisquam nulla quam velit doloribus. Ut nobis doloribus vel nisi accusantium consequatur. Earum voluptatum architecto impedit explicabo maiores repellat vel explicabo.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7003,7029,'Aspernatur quo.','Porro occaecati ducimus dolorum consequatur praesentium. Est aperiam nesciunt id iure. Ipsum in veritatis assumenda corporis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7031,7003,'Id culpa vel magnam.','Doloremque fuga nam incidunt iure cumque quae labore molestias. Aperiam commodi dolor culpa eveniet.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7019,7010,'Sint maiores.','Similique eum molestias quas. Unde soluta saepe a quaerat facilis. Amet esse eum vero.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7049,7047,'Nesciunt maiores.','Deserunt quo sapiente nobis vero. Ullam id earum quibusdam ipsum autem autem quas fugiat. Officia iusto excepturi delectus ipsam enim qui.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7025,7045,'Vero sapiente.','Doloribus repudiandae modi totam error ducimus sit. Harum reprehenderit suscipit ratione magnam aliquam aut molestiae. Fuga veritatis sint consequuntur quibusdam. Temporibus aperiam vel officia.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7013,7048,'Itaque minus nulla.','Ut enim ipsa earum eos eos. Molestiae quos explicabo iste repudiandae. Illum maxime sunt facere recusandae optio.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7029,7031,'Provident quam.','Numquam incidunt aut aut sed nihil consequatur atque. Blanditiis harum quisquam soluta voluptatibus optio. Consequuntur iure ab unde ad.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7048,7018,'Praesentium sed.','Animi maiores expedita inventore animi qui laborum sequi. Sint impedit laborum quia cum. Commodi nam impedit fuga itaque sint autem in.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7047,7017,'Excepturi.','Nihil necessitatibus error beatae laboriosam similique hic. Ipsa aliquam cumque necessitatibus ipsam eius dolorum. Maiores vero expedita illo eius.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7030,7008,'Odio magni aperiam.','Quas voluptates est dolor atque ipsum. Quibusdam ipsum sapiente unde libero. Repudiandae accusamus voluptatum nemo occaecati aut voluptas.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7037,7014,'Provident commodi.','Odio aliquid sapiente minus nihil accusamus dignissimos omnis. Adipisci delectus minima harum necessitatibus deleniti nemo. Minus ea maiores tenetur adipisci.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7038,7017,'Veritatis quod.','Exercitationem delectus quo excepturi architecto magni accusamus enim commodi. Maiores architecto neque modi aspernatur fugit est.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7004,7010,'Soluta harum illo.','Error molestiae officiis error voluptatibus possimus repudiandae. Ipsa ipsum sunt numquam debitis doloribus nam.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7014,7003,'Esse alias.','Illo in sit atque corrupti a tempore id. Assumenda atque repellat vitae error rem. Eaque sequi ad nam maxime vitae deserunt eum.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7048,7012,'Molestiae rerum.','Ab omnis nam commodi sed consequuntur. Hic ab veniam atque expedita doloribus ducimus esse. Tenetur tempore dicta unde facere sapiente. Ipsa expedita ratione sed explicabo aspernatur eveniet.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7029,7023,'Dolorum provident.','Corporis ex ullam nam porro numquam. Optio minus repellendus beatae corrupti aperiam. Vero cupiditate saepe rerum excepturi. Veniam a porro nostrum quisquam assumenda occaecati.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7009,7047,'Itaque quas enim.','Voluptas perferendis cupiditate deleniti blanditiis. Fuga placeat reiciendis molestiae qui iure. Qui nam blanditiis explicabo repellat at.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7038,7045,'Quod temporibus.','Dolore id odio modi ipsum quam architecto. Consequuntur totam cumque totam fuga labore. Labore nemo porro corrupti enim quod suscipit.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7044,7003,'Voluptates quidem.','Ducimus nesciunt error doloremque dignissimos. Sunt nihil dolore architecto esse non itaque quisquam. Qui consequuntur provident rem natus dolor soluta id.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7018,7031,'Necessitatibus quam.','A explicabo repellat aliquam porro excepturi. Quo laboriosam recusandae corporis laborum dolorum ipsum impedit. Repellat provident accusamus quod repellendus ea vero.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7030,7002,'Vel porro nostrum.','Perspiciatis maxime blanditiis sit hic esse placeat. Sunt maxime molestias aliquid facilis accusamus rem asperiores. Error nihil reiciendis est.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7037,7041,'Reiciendis dicta.','Consectetur id voluptatibus mollitia repellendus sunt consectetur. Rem ab eius exercitationem mollitia doloribus sapiente beatae. Numquam sequi corrupti cum perferendis nobis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7023,7003,'Ipsa recusandae.','Cumque praesentium dolore eos asperiores fugit fuga expedita qui. Voluptas ipsam sint velit dolore sunt. Harum molestiae suscipit eius. Eaque dolor voluptas autem neque sint tempora nobis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7000,7039,'Dolore unde.','Ipsum porro cupiditate perferendis ea recusandae. Eligendi numquam perferendis accusamus ipsum laboriosam doloremque.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7005,7012,'Quos quae repellat.','Nobis itaque eveniet natus ducimus fugiat ut officia inventore. Ab id facere ducimus ad exercitationem. Voluptas asperiores quidem alias consequuntur a quo. Autem dignissimos a minus in.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7014,7027,'Natus iure tenetur.','Asperiores deleniti ullam dolorum ab quod rem. Sunt doloribus illo in sed maiores. Repellendus saepe doloremque similique illum aliquid omnis.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7016,7038,'Accusamus magni.','Aut dolorum dolores iusto recusandae. Id iste debitis incidunt atque quam cum. Perspiciatis voluptatum excepturi facilis repellat placeat.','2016-11-25');
INSERT INTO messages(recipient_id, sender_id, msg_subject, msg_body, msg_date) VALUES(7047,7037,'Blanditiis dolor.','Esse culpa soluta fuga quod quibusdam. Labore voluptates provident expedita cupiditate impedit atque. Incidunt aliquid dicta magni aliquam eaque quae quae magnam.','2016-11-25');

-- Test Read messages

INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7041,7023,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7084,7004,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7079,7048,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7078,7029,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7021,7046,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7068,7011,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7099,7047,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7010,7037,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7061,7020,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7024,7006,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7025,7001,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7074,7019,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7020,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7054,7013,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7028,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7029,7005,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7082,7037,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7042,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7088,7009,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7071,7048,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7003,7039,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7080,7047,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7037,7012,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7017,7018,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7031,7022,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7027,7032,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7086,7048,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7013,7009,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7035,7017,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7087,7029,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7072,7003,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7033,7001,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7040,7006,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7047,7048,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7055,7026,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7048,7047,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7019,7030,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7062,7003,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7038,7042,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7036,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7065,7036,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7070,7027,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7058,7043,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7083,7038,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7032,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7056,7039,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7008,7031,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7075,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7077,7013,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7000,7040,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7046,7008,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7030,7015,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7063,7038,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7023,7005,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7034,7049,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7009,7023,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7016,7040,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7053,7042,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7012,7031,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7057,7018,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7015,7002,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7098,7016,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7026,7018,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7073,7031,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7050,7036,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7060,7026,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7059,7032,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7091,7018,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7043,7030,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7001,7031,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7067,7030,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7081,7030,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7002,7028,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7022,7032,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7089,7038,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7093,7037,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7051,7007,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7094,7023,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7005,7019,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7090,7044,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7049,7004,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7066,7021,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7085,7014,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7045,7046,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7076,7025,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7044,7038,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7097,7014,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7096,7005,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7006,7048,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7039,7010,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7014,7003,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7018,7002,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7064,7043,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7011,7035,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7095,7000,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7004,7047,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7069,7002,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7052,7009,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7007,7001,'2016-11-25');
INSERT INTO message_read(msg_id, reader_id, date_sent) VALUES(7092,7030,'2016-11-25');






