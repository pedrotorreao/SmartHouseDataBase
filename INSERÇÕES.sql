INSERT INTO user(name,password,funct)  values("NICACIO", "123456", "RESIDENTE");
INSERT INTO user(name,password,funct)  values("PEDRO", "654321", "FUNCIONARIO");
INSERT INTO user(name,password,funct)  values("DANILO", "135791", "RESIDENTE");
INSERT INTO user(name,password,funct)  values("NOEL", "123456", "FUNCIONARIO");
INSERT INTO user(name,password,funct)  values("PAULO", "123456", "VISITANTE");

INSERT INTO client_app(d_name,description,user_id,d_status)  values("AR COND.", "ESTABILIZA A TEMPERATURA AMBIENTE","2","ON");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("LUZES", "APAGAR/ACENDER ILUMINAÇÃO AMBIENTE","3","ON");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("TV", "ASSISTA PROGRAMAS, JOGOS, FILMES, ETC.","4","OFF");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("RADIO", "OUVIR MUSICA/RADIO","5","ON");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("AR COND.", "ESTABILIZA A TEMPERATURA AMBIENTE","5","ON");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("CORTINAS", "ABRIR/FECHAR","1","OPEN");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("CAMERA", "MONITORAMENTO","1","ON");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("CAMERA", "MONITORAMENTO","2","OFF");
INSERT INTO client_app(d_name,description,user_id,d_status)  values("IRRIGADOR","IRRIGAÇÃO DO JARDIM","1","OFF");

INSERT INTO consumption(daily,weekly,device_id) values("100","500","3");
INSERT INTO consumption(daily,weekly,device_id) values("100","1500","4");
INSERT INTO consumption(daily,weekly,device_id) values("500","2500","1");
INSERT INTO consumption(daily,weekly,device_id) values("500","2500","5");

INSERT INTO cameras(device_id2) values("7");
INSERT INTO cameras(device_id2) values("8");

INSERT INTO multimidia(device_id4) values("2");
INSERT INTO multimidia(device_id4) values("3");
INSERT INTO multimidia(device_id4) values("4");
INSERT INTO multimidia(device_id4) values("1");

INSERT INTO suite(device_id3) values("5");
INSERT INTO suite(device_id3) values("6");

INSERT INTO garden(device_id5,watering_schedule) values("9","20171231");


