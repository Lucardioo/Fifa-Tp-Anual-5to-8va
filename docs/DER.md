```mermaid
erDiagram

    Posicion{
        TINYINT     idPosicion  PK,FK
        VARCHAR(45) nombre      UK     
    }

    Habilidad{
        TINYINT     idHabilidad PK,FK
        VARCHAR(45) descripcion UK
    }

    Futbolista-Habilidad{
        TINYINT     idFutbolista    PK, FK
        TINYINT     idHabilidad     PK, FK
    }
         Futbolista-Habilidad }|--|| Habilidad : ""
        Futbolista-Habilidad }|--|| Futbolista : ""

    Futbolista{
        TINYINT     idFutbolista    PK
        TINYINT     idPosicion      FK
        VARCHAR(45) nombre 
        VARCHAR(45) apellido            
        DATE        fechaDeNacimiento    
        INT         velocidad        
        INT         remate              
        INT         pase                 
        INT         defensa              
    }
        Futbolista }|--|| Posicion  : "" 
       
        

   
    Jugador{
        TINYINT     idJugador       PK
        VARCHAR(45) nombre
        VARCHAR(45) apellido
        VARCHAR(15) nombreDeUsuario UK
        CHAR(64)    contrasena
        MEDIUMINT   monedas
    }

    Posesion{
        TINYINT     idJugador       PK,FK
        TINYINT     idFutbolista    PK,FK
        BOOL        adquirido
    }
    Posesion }|--|| Jugador  : ""
    Posesion }|--|| Futbolista : ""
    
    

    Transferencia{
        TINYINT     idTransferencia PK
        TINYINT     idFutbolista    FK
        TINYINT     idJugador       FK
        Datetime    fechaHora
        MEDIUMINT   precio
        MEDIUMINT   monedas
        Date     fechaConcretacion 
    }
        Transferencia}|--|| Jugador : ""
        Transferencia }|--|| Futbolista : ""

```


- Nombre de las posiciones dentro de la cancha.

- Nombre de las habilidades y una descripción (no más de 45 caracteres).

- De los futbolistas importa conocer nombre, apellido, fecha de nacimiento, velocidad, remate, pase, defensa (valores enteros entre 1 y 100). Cada jugador tiene una posición en la cancha y puede tener múltiples habilidades (o ninguna).

- De los jugadores (jugadores reales del juego) importa conocer su nombre, apellido, nombre de usuario (único, máximo de 15 letras) contraseña (64 caracteres de longitud fija) y cantidad de monedas (positivo o cero, valor máximo 999.999). 

- Posesión de futbolistas por jugadores (un jugador puede tener muchos futbolistas y el mismo futbolista puede pertenecer a varios jugadores).

- De las transferencias importa conocer fecha y hora de publicación, jugador que ofrece un futbolista y precio en monedas. Cuando la transferencia es exitosa se termina de asignar fecha y hora transferencia y jugador comprador.
