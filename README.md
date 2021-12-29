# README

Para dar uso a esta API, crear un user. Esta contiene los valores de UF enero febrero segun requerimiento.

Crear una cuenta de usuario
  Ir a la ruta POST
    http://localhost:3000/clients/register
  el formato de la consulta es un json con el "user: usuario".
  el user name es unique.( tambien se volvera a minusculas para ahorrar dramas y se sacan espacios gracias al metodo downcase y gsub..)
  Si se registro correctamente el usuario arrojara un json que dice: UserCreated.  
Devolver valor de UF en una fecha solicitada
    Consultar a la ruta GET
    http://localhost:3000/uf/:d <-- (d se cambia por la fecha con formato aaaa-mm-dd)
    se añade un header con KEY "key-client", basandose en el usuario creado, si no se añade un usuario se arrojara un json diciendo que se añada un user..
    Ejemplo request:
    http://localhost:3000/uf/2021-1-1
    solo consultas exitosas se cuentan.
Solicitar la cantidad de consultas de un usuario
    Consultar a la ruta GET
    http://localhost:3000//clients/:user/consumed  <-- (:user se cambia por usuario que se consultara.)
    
