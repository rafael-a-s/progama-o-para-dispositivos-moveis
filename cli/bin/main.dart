import 'package:cli/Service/analista/AnalistaService.dart';
import 'package:cli/Service/diarista/DiaristaService.dart';
import 'package:cli/Service/gerente/GerenteService.dart';
import 'package:cli/Service/programador/ProgramadorService.dart';
import 'package:cli/funcionarios/Analista.dart';
import 'package:cli/funcionarios/Diarista.dart';
import 'package:cli/funcionarios/Gerente.dart';
import 'package:cli/funcionarios/Programador.dart';

void main() {

  print("Gerente");
  var gerente = new Gerente(4000, "Rafael Aguiar", true);
  var gerenteService = new GerenteService();

  gerente = gerenteService.makePayment(gerente);
  print(gerente.payments);
  print("-----------------------------------------------");

  print("Diarista");
  var diarista = new Diarista(60, "Rafael Aguiar", false,10);
  var diaristaService = new DiaristaService();

  diarista = diaristaService.makePayment(diarista);
  print(diarista.payments);
  print("-----------------------------------------------");

  print("Programador");
  var programador = new Programador(2000, "Rafael Aguiar", false);
  var programadorService = new ProgramadorService();

  programador = programadorService.makePayment(programador);
  print(programador.payments);
  print("-----------------------------------------------");

  print("Analista");
  var analista = new Analista(4000, "Rafael Aguiar", true);
  var analistaService = new AnalistaService();

  analista = analistaService.makePayment(analista);
  print(analista.payments);
  print("-----------------------------------------------");


}

