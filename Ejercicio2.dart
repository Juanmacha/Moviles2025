import 'dart:io';

void main() {
  Exercise();
}

void Exercise() {
  Map<String, int> Estudiantes = {
    "Juan": 19,
    "Wilson": 20,
    "Yuver": 23,
    "Marta": 17
  };

  print("Ingresa tu nombre:");
  String nombre = stdin.readLineSync()!;

  if (Estudiantes.containsKey(nombre)) {
    print("Edad de $nombre: ${Estudiantes[nombre]} años.");
  } else {
    print("Estudiante no encontrado.");
  }
}
