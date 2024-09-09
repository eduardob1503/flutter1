import 'Erro.dart';
import 'calculoA.dart';

class BLLcalculoA {
  static void validaDados(calculoA calc) {
    // Inicializa a flag de erro
    Erro.error = false;

    // Valida o campo da altura
    if (calc.h.isEmpty) {
      Erro.msg = "O campo da altura é de preenchimento obrigatório";
      Erro.error = true;
      return; // Interrompe a validação se houver erro
    } else {
      try {
        double.parse(calc.h); // Verifica se a altura é numérica
      } catch (e) {
        Erro.msg = "O campo de ALTURA deve ser numérico";
        Erro.error = true;
        return; // Interrompe a validação se houver erro
      }
    }

    // Valida o campo da base
    if (calc.b.isEmpty) {
      Erro.msg = "O campo de BASE é de preenchimento obrigatório";
      Erro.error = true;
      return; // Interrompe a validação se houver erro
    } else {
      try {
        double.parse(calc.b); // Verifica se a base é numérica
      } catch (e) {
        Erro.msg = "O campo BASE deve ser numérico";
        Erro.error = true;
        return; // Interrompe a validação se houver erro
      }
    }
  }
}
