class calculoA {
  String _h = '0';
  String _b = '0';

  // Getter para altura
  String get h => _h;

  // Getter para base
  String get b => _b;

  // Getter para a área
  String get area {
    try {
      double base = double.parse(_b);
      double altura = double.parse(_h);
      double area = (base * altura) / 2;
      return area.toString();
    } catch (e) {
      return 'Erro ao calcular a área'; // Retorna uma mensagem de erro se a conversão falhar
    }
  }

  // Setter para altura
  set valorH(String h) {
    _h = h;
  }

  // Setter para base
  set valorB(String b) {
    _b = b;
  }
}
