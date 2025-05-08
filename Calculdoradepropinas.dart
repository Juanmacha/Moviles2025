import 'dart:io';
import 'dart:math';

void main (){
  print('Bienvenido a la  calculadora de propina');

  print('1. Ingrese el total de la cuenta a pagar: ');
  double totalCuenta = double.parse(stdin.readLineSync()!);
  print('2. Ingrese el porcentaje de propina a agregar:');
  double porcentajePropina = double.parse(stdin.readLineSync()!);
  double propina = (totalCuenta * porcentajePropina) / 100;
  double totalConPropina = totalCuenta + propina;
  print('3. Ingrese la cantidad de personas que van a pagar: ');
  int cantidadPersonas = int.parse(stdin.readLineSync()!);
  double totalPorPersona = totalConPropina / cantidadPersonas;
  print('El total de la cuenta es \$${totalConPropina}. \n Cada persona debe pagar: \$${totalPorPersona.toStringAsFixed(2)}');
}