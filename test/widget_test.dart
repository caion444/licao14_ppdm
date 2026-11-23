import 'package:flutter_test/flutter_test.dart';
import 'package:licao14_ppdm/main.dart';

void main() {
  testWidgets('Renderiza tela da trilha oficial Flutter', (WidgetTester tester) async {
    await tester.pumpWidget(const Licao14FlutterApp());
    expect(find.text('Acampamento Lago Oeschinen'), findsOneWidget);
    expect(find.text('41'), findsOneWidget);
  });
}
