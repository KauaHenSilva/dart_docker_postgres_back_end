CREATE TABLE clientes (
  id serial not null,
  nome varchar(200) not null,
  email varchar(200) not null,
  pix varchar(50) not null,
  image_capa_url varchar(50) not null
);