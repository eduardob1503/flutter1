class Erro {
  // Variáveis privadas estáticas
  static bool _erro = false;
  static String _mens = '';

  // Setter para definir o erro
  static set error(bool erro) {
    _erro = erro;
  }

  // Setter para definir a mensagem de erro
  static set msg(String mens) {
    _erro = true;
    _mens = mens;
  }

  // Getter para obter o estado do erro
  static bool get error => _erro;

  // Getter para obter a mensagem de erro
  static String get msg => _mens;
}
