
class Pilha {
  
  var _pilha = <String>[];

  push(String value){
    this._pilha.add(value);
  }

  pullInPilha(){
    if(_pilha.isEmpty) return;

    var index = this._pilha.length;
    if(index > 0 ) index = index - 1;
    this._pilha.removeAt(index);
  }

  show(){
    print(this._pilha);
  }
}