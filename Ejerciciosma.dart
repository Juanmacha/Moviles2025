import 'dart:io';
import 'dart:math';

void main(){
  print("Bienvenido al progrma matematico");
  print("1.Calcular distancias.");
  print("2.Calcular Promedio de notas");
  print("3.Obtener puntaje total del equipo");
  print("4.Elaborar plantilla de empleado");
  print("5.Hallar hipotenusa");
  print("6.Trasformar grados a helios");
  print("7.Salir del programa");
  print("Elige una opcion:");
  int opcion =int.parse(stdin.readLineSync()!);

  bool Salir = true;
  while(Salir){
    switch (opcion) {
      case 1:
        print("la distancia recorrida por automóvil");
        print('Ingrese la velocidad del automóvil (km/h): ');
        double velocidad = double.parse(stdin.readLineSync()!);
        print('Ingrese el tiempo de recorrido (horas): ');
        double tiempo = double.parse(stdin.readLineSync()!);
        double distancia = velocidad * tiempo;
        print('La distancia recorrida es: $distancia km');
        break;
      case 2:
        print("Obtener promedio de un estudiante");
        double sumaNotas = 0;
        for (int i = 0; i < 3; i++) {
          print('Ingrese la nota ${i + 1}: ');
          double nota = double.parse(stdin.readLineSync()!);
          sumaNotas += nota;
        }
        double promedio = sumaNotas / 3;
        print('El promedio es: $promedio');
      break;
      case 3:
        print(" puntaje total de un equipo");
        print('Ingrese el número de partidos ganados:');
        int partidosGanados = int.parse(stdin.readLineSync()!);
        print('Ingrese el número de partidos empatados:');
        int partidosEmpatados = int.parse(stdin.readLineSync()!);
        print('Ingrese el número de partidos perdidos:');
        int partidosPerdidos = int.parse(stdin.readLineSync()!);

        int puntajeTotal = (partidosGanados * 3) + (partidosEmpatados * 1) + (partidosPerdidos * 0);
        print('El puntaje total del equipo es: $puntajeTotal');
        break;
      case 4:
        print(" planilla de un empleado");
        print('Ingrese el nombre del empleado: ');
        String nombre = stdin.readLineSync()!;
        print('Ingrese la cantidad de horas laboradas en el mes:');
        double horasLaboradas = double.parse(stdin.readLineSync()!);
        print('Ingrese el valor por hora:');
        double valorHora = double.parse(stdin.readLineSync()!);

        double devengadoEmpleado = horasLaboradas * valorHora;
        print('El empleado $nombre ha devengado: \$${devengadoEmpleado.toStringAsFixed(2)} en el mes.');
      break;
      case 5:
        print("Hallar hipotenusa de un triángulo rectángulo");
        print('Ingrese el cateto a: ');
        double catetoA = double.parse(stdin.readLineSync()!);
        print('Ingrese el cateto b: ');
        double catetoB = double.parse(stdin.readLineSync()!);

        double hipotenusa = sqrt(pow(catetoA, 2) + pow(catetoB, 2));
        print('La hipotenusa es: $hipotenusa');
      break;
      case 6:
        print("Transformar grados Celsius a Fahrenheit");
        print('Ingrese la temperatura en grados Celsius: ');
        double celsius = double.parse(stdin.readLineSync()!);
        double fahrenheit = (celsius * 1.8) + 32;
        print('La temperatura en grados Fahrenheit es: $fahrenheit');
      break;
      case 7:
      Salir = false;
      print("Saliste del programa");
      break;
      default:
    }
  }
    
}