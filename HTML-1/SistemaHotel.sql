CREATE TABLE usuario(
  user VARCHAR(45) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  dni VARCHAR(45) NOT NULL,
  correo VARCHAR(45) NOT NULL,
  PRIMARY KEY (user));


CREATE TABLE login (
  userLogin VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  PRIMARY KEY (userLogin),
  CONSTRAINT fk_login_usuario
    FOREIGN KEY (userLogin)
    REFERENCES usuario (user)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    INSERT INTO usuario as A inner join login as B (A.user, A.nombre, A.apellido, A.dni, A.correo,
                                                    B.userLogin, B.password)
     VALUES ('juan', 'juan', 'vargas', '70554445', 'juan@gmail.com','juan', 'juan');



     select A.user, A.nombre, A.apellido, A.dni, A.correo, B.userLogin, B.password
     from usuario as A inner join login as B on (A.user = B.userLogin) where A.user ="michael" and B.clave="michael";



     
