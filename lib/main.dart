import 'calc.dart';

void main() {
  // Крок табулювання вказується у конструкторі, діапазон за замовчуванням [-3, 3]
  final processor = Calc(0.5);

  print('--- Табулювання у діапазоні за замовчуванням [-3, 3] ---');
  processor.runCalc();
  print('Середнє арифметичне: ${processor.result?.toStringAsFixed(4)}\n');

  // Зміна меж діапазону через методи setRangeFrom та setRangeTo
  processor.setRangeFrom(-2.0);
  processor.setRangeTo(4.0);

  print('--- Табулювання у зміненому діапазоні [-2, 4] ---');
  processor.runCalc();
  print('Середнє арифметичне: ${processor.result?.toStringAsFixed(4)}');
}