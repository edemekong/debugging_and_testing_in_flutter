
void main() {
  // syntaxError();
  // semanticError();
  // logicError();
  // runtimeError();
}




// Syntax errors
void syntaxError(){
    print("Hello, World";
}

// Semantic errors
void semanticError(){
  int result = 5 + 3; // Semantic error, expecting multiplication
  print(result);
}

// Logic errors
void logicError(){
  // calculate the perimeter of a square
  // formular: P = a4

  int a = 10;
  int p = a + 4;

  print(p); // prints unexpected value

}

// Runtime errors
void runtimeError(){
  int a = 10;
  int b = 0;
  print(a / b); // Causes a runtime error: division by zero

  List<String> names = ['Segun', 'Busket'];
  print(names[2]); // Causes a runtime error: out of range
}