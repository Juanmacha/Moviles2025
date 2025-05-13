void main(){
  listExample();
  setsExaple();
  mapExample();
}

void listExample(){
  List<String> numbers = ["uno","dos","tres"];
  var numbers2 = ["cuatro","cinco","seis"];
  //Editat un valor de la lista
  numbers[0] = "Uno modificado";
  //Agregar un valor a la lista
  numbers.add("siete");
  //Unir listas u objetos
  numbers.addAll(numbers2);
  //Eliminar un valor de la lista por posicion
  numbers.removeAt(0);
  //Eliminar un valor por nombre del valor
  numbers.remove("siete");
  //Inserta valor en posicion especifica
  numbers.insert(0, "cero");
  //Limpiar lista
  //numbers.clear();
  //Ordenar en orden alfabetico
  numbers.sort();
  print(numbers);

  //Recorrer lista ciclo for
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
}

//Sets
//No se pueden tener valores repetidos  
void setsExaple(){
  Set<String> numbers = {"uno","dos","tres"};
  var numbers2 = {"cuatro","cinco","seis"};
  //Mismos metodos que las lista solo que no se puede repetir valores y que no manejan posiciones.
    for (var i = 0; i < numbers.length; i++) {
    print(numbers.elementAt(i));

    print(numbers);
  }
}


//Map

void mapExample(){
  Map<String, int> numbers ={
    "uno":2,
    "dos":3,
    "tres":4
  };

  //Añadir un valor al map
  numbers["cuantro"] = 4;

  print(numbers);

  //Eliminar
  numbers.remove("tres");

  for (var i = 0; i < numbers.length; i++) {
    print(numbers.entries.elementAt(i));
  }
}