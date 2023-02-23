import 'dart:math';
import 'package:cli/cli.dart' as cli;
import 'package:cli/fila/fila.dart';
import 'package:cli/pilha/pilha.dart';

void main() {
  Pilha pilha = new Pilha();
  print("======== PILHA ==========");
  pilha.push("value 1");
  pilha.show();
  pilha.pullInPilha();
  pilha.push("value 1");
  pilha.push("value 2");
  pilha.show();
  pilha.pullInPilha();
  pilha.show();

  print("======== FILA ==========");
  Fila fila = new Fila();
  fila.gitInLine("Rafael");
  fila.gitInLine("Pato Do Santander");
  fila.gitInLine("Urubu Do Pix");
  fila.show();
  
  fila.pullingOfLine();
  fila.pullingOfLine();
  fila.show();

  fila.gitInLine("Leão Da Caixa");
  fila.show();

  fila.pullingOfLine();
  fila.show();
}
