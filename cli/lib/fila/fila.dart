class Fila {

  var _fila = <String>[];

  gitInLine(String value){
    _fila.add(value);
  }

  pullingOfLine(){
    if(_fila.isEmpty) return;

    _fila.removeAt(0);
  }

  show(){
    print(_fila);
  }
}