CREATE PROCEDURE insert_user (user_nome VARCHAR(25), user_password VARCHAR(6), func VARCHAR(25))
	BEGIN
		IF ((user_nome != '') && (user_password != '')) THEN
			INSERT INTO user (name, password, funct) VALUES (user_nome, user_password, func);
		ELSE
			SELECT 'name and password not null' AS Msg;
		END IF; 
	END;
	

/*Consulta 1: Retorne a ID, Nome e os ClientAPP para todos os usuários*/

SELECT id_user,name FROM user;
SELECT d_name,user_id FROM client_app;

/*Consulta 2: Liste todos dispositivos que estão ligados.*/

SELECT * FROM client_app WHERE d_status = "ON";

/*Consulta 3: Liste os dispositivos (ID, Nome e Status) que estão associados a um USER X.*/

SELECT id_client_app,d_name,d_status FROM client_app WHERE user_id = "1";

/*Consulta 4: Retorne o último de USER registrado no sistema e seu ClientAPP.*/

/*SELECT name FROM user WHERE id_user=(SELECT MAX(id_user) FROM user);
SELECT d_name FROM client_app WHERE user_id=(SELECT MAX(id_user) FROM user);*/

SELECT name,d_name FROM user JOIN client_app WHERE id_user=(SELECT MAX(id_user) FROM user) AND user_id=(SELECT MAX(id_user) FROM user);
/*Consulta 5: Retorne o último USER a acessar o sistema e seu ClientAPP.*/




























