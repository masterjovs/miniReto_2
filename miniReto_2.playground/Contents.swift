//: Playground - noun: a place where people can play

import UIKit


/*

Mini Reto - VELOCIMETRO

Crea un playground que contenga los elementos para representar un velocímetro de un automóvil. Recuerda que estamos practicando la programación orientada a objetos y primero debes diseñar la clase, enumeraciones o estructuras para llevarlas a un aplicación móvil. ¿Qué debes de realizar?

Declara la enumeración: Velocidades, sus valores serán de tipo Int.
La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
- Apagado = 0, representa la velocidad 0.

- VelocidadBaja = 20, representa una velocidad de 20km por hora.

- VelocidadMedia = 50, representa una velocidad de 50km por hora

- VelocidadAlta = 120, representa una velocidad de 50km por hora.

- Además, debes de declarar un inicializador que recibe un velocidad:

- init( velocidadInicial : Velocidades )

- El inicializador se debe asignar a self el valor de velocidadInicial

Declara la clase: Auto
La clase Auto tiene los siguientes atributos:
- Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.

Las funciones o métodos que define la clase Auto son las siguientes:
- init( ), agrega la función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.

- func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String), la función cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo:  Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.

Pruebas de la clase:
- En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.

- Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.

- Una salida válida con cinco iteraciones es:

0 , Apagado
20, Velocidad baja
50, Velocidad media
120, Velocidad alta
50, Velocidad media
120, Velocidad alta
50, Velocidad media
120, Velocidad alta
50, Velocidad media
… etc.


Review Criteriamenos

*   ¿El playground se encuentra en GitHub? SI

*   ¿El playground está hecho en Swift?    SI

*   ¿Se declara la enumeración: Velocidades y sus valores de tipo Int.?   SI

*   ¿Dentro de la enumeración Velocidades se cuenta con los elementos de: Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 y VelocidadAlta = 120?

*   ¿La enumeración Velocidades, cumple con la función inicializadora:  init( velocidadInicial : Velocidades ) El inicializador se debe asignar a self el valor de velocidadInicial?
*   ¿Se declara la clase: Auto?
*   ¿La clase Auto cuenta con una instancia de la enumeración Velocidades, llamada: velocidad?
*   ¿La clase Auto implementa el método: init( )?
*   ¿La clase Auto implementa la función: func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) y sus reglas de ejecución?
*   ¿Se realiza la prueba de la clase Auto, iterando 20 veces el método cambioDeVelocidad() y sus salidas se observan en la consola?
*/




//*   ¿Se declara la enumeración: Velocidades y sus valores de tipo Int.?
//*   ¿Dentro de la enumeración Velocidades se cuenta con los elementos de: Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 y VelocidadAlta = 120?
//*   ¿La enumeración Velocidades, cumple con la función inicializadora:  init( velocidadInicial : Velocidades ) El inicializador se debe asignar a self el valor de velocidadInicial?

enum Velocidades : Int{
    
    case Apagado = 0                               //representa la velocidad 0.
    case VelocidadBaja = 20                       //representa una velocidad de 20km por hora.
    case VelocidadMedia = 50                      //representa una velocidad de 50km por hora
    case VelocidadAlta  = 120                     //representa una velocidad de 120km por hora.
    
    init(velocidadInicial : Velocidades ){        // Inicializacion de las variables enum velociadad inicial Apagado
        self = .Apagado
    }
}

//*   ¿Se declara la clase: Auto?

class Auto {                                            //Creacion y declaracion de la Clase Auto

    
//*   ¿La clase Auto cuenta con una instancia de la enumeración Velocidades, llamada: velocidad?

    var velocidadInicial : Velocidades                  //Declaracion de Atributo del tipo enum Velocidades
    
    var actual : Int = 0                                //Declaracion de variable entera para retornar velocidad actual
    var velocidadEnCadena : String = " "                //declaracion de variable tipo String para sacar cadena que representa la velocidad actual
    
//*   ¿La clase Auto implementa el método: init( )?
    
    init(velocidadInicial : Velocidades){               // Inicializacion de las variables del tipo enum Velocidades
        self.velocidadInicial = velocidadInicial
    }
    

    
 //*   ¿La clase Auto implementa la función: func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) y sus reglas de ejecución?
    
    func cambioDeVelocidad( )-> (Int , String) {                // Declaracion de funcion que regresa dos variables entera y string - la funcion regresa el estado actual de velocimetro y hace los cambios de velocidad
        
        if auto.velocidadInicial.rawValue == 0{                             // condicional que detecta el estado actual del velocimetro en estado APAGADO
            
            actual = auto.velocidadInicial.rawValue
            auto = Auto.init(velocidadInicial: Velocidades.VelocidadBaja)
            velocidadEnCadena = "Apagado"
        }
            
        else if auto.velocidadInicial.rawValue == 20                        // condicional que detecta el estado actual del velocimetro en estado VELOCIDAD BAJA

        {
            actual = auto.velocidadInicial.rawValue
            auto = Auto.init(velocidadInicial: Velocidades.VelocidadMedia)
            velocidadEnCadena = "VelocidadBaja"
        }
            
        else if auto.velocidadInicial.rawValue == 50                        // condicional que detecta el estado actual del velocimetro en estado VELOCIDAD MEDIA

        {
            actual = auto.velocidadInicial.rawValue
            auto = Auto.init(velocidadInicial: Velocidades.VelocidadAlta)
            velocidadEnCadena = "VelocidadMedia"
        }
            
        else if auto.velocidadInicial.rawValue == 120                       // condicional que detecta el estado actual del velocimetro en estado VELOCIDAD ALTA

        {
            actual = auto.velocidadInicial.rawValue
            auto = Auto.init(velocidadInicial: Velocidades.VelocidadMedia)
            velocidadEnCadena = "VelocidadAlta"
        }
    return (actual, velocidadEnCadena)                                  // Retorna el valor que tenga el entero y el tipo string
    }
}




var auto = Auto.init(velocidadInicial: Velocidades.Apagado)             // declaracion de variable de tipo clase y su inicializacion

//*   ¿Se realiza la prueba de la clase Auto, iterando 20 veces el método cambioDeVelocidad() y sus salidas se observan en la consola?

for var i = 1 ; i < 21 ; i++ {
    
    if i == 20{
        print("\(i) , ...etc.")
    }else if i < 20{
        print("\(i)  , \(auto.cambioDeVelocidad())")
    }
}




