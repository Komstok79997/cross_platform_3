class Calc {
  double? _result;

  double rangeFrom = -3.0;
  double rangeTo = 3.0;
  final double step;

  /// Конструктор приймає крок табулювання
  Calc(this.step) {
    if (step <= 0) {
      throw ArgumentError('Крок табулювання має бути більшим за 0.');
    }
  }

  /// Геттер результату (середнього арифметичного)
  double? get result => _result;

  /// Встановлює початкову межу діапазону ("з")
  void setRangeFrom(double value) {
    rangeFrom = value;
  }

  /// Встановлює кінцеву межу діапазону ("по")
  void setRangeTo(double value) {
    rangeTo = value;
  }

  /// Запускає табулювання функції у циклі for
  void runCalc() {
    if (rangeFrom > rangeTo) {
      _result = null;
      print('Помилка: початок діапазону не може бути більшим за кінець.');
      return;
    }

    var sum = 0.0;
    var count = 0;
    // Похибка для коректного включення верхньої межі при роботі з double
    final epsilon = step * 1e-9;

    for (var x = rangeFrom; x <= rangeTo + epsilon; x += step) {
      final y = _calc(x);
      print('x = ${x.toStringAsFixed(2)}, y = ${y.toStringAsFixed(4)}');

      sum += y;
      count++;
    }

    _result = count > 0 ? sum / count : null;
  }

  /// Обчислення функції y = x^2 - 4 + x
  double _calc(double x) {
    return x * x - 4 + x;
  }
}