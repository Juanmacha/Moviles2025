import 'dart:io';

void main(){
  Exercise();
}

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void Exercise() {
  List<int> numbers = [];
  
      print("Ingresa el tamaño de la lista:");
  int listatamano = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < listatamano; i++) {
    print("Ingresa el valor:");
    int valor = int.parse(stdin.readLineSync()!);
    numbers.add(valor);
  }

  List<int> primos = [];
  List<int> noPrimos = [];

  for (var numero in numbers) {
    if (esPrimo(numero)) {
      primos.add(numero);
    } else {
      noPrimos.add(numero);
    }
  }

  print("Números primos: $primos");
  print("Números no primos: $noPrimos");
}


